import {
  ReactNode,
  createContext,
  useCallback,
  useContext,
  useEffect,
  useState,
} from "react";

import { GameContext } from "./GameContext";
import { appwriteDb } from "../appwrite/database";
import { RealtimeDataDocument } from "../appwrite/types";
import { Box } from "@mui/system";

export interface RealtimeDataProps {
  realtimeData: RealtimeDataDocument | null;
  setRealtimeData: (realtimeData: RealtimeDataProps["realtimeData"]) => void;
  loading: boolean;
}

interface RealtimeDataProviderProps {
  children: ReactNode;
}

export const useRealtimeDataContext = () => {
  const context = useContext(RealtimeDataContext);

  if (!context) {
    throw new Error(
      "useRealtimeDataContext must be used within a RealtimeDataContextProvider"
    );
  }

  return context;
};

export const RealtimeDataContext = createContext<RealtimeDataProps | null>(
  null
);

export function RealtimeDataContextProvider({
  children,
}: RealtimeDataProviderProps) {
  const [realtimeData, setRealtimeDataState] =
    useState<RealtimeDataDocument | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    appwriteDb.realtime_data.list().then((response) => {
      setRealtimeDataState(response.documents[0] as RealtimeDataDocument);
      setLoading(false);
    });
  }, []);

  useEffect(() => {
    const unsubscribeRealtimeData = appwriteDb.realtime_data.subscribe(
      (response) => {
        setRealtimeDataState(response.payload as RealtimeDataDocument);
      },
      ".documents"
    );

    return () => {
      unsubscribeRealtimeData();
    };
  }, []);

  const setRealtimeData = (realtimeData: RealtimeDataProps["realtimeData"]) => {
    if (realtimeData !== null) {
      setRealtimeDataState(realtimeData);
      appwriteDb.realtime_data.update(realtimeData?.$id, {
        countdown_timer_active: realtimeData.countdown_timer_active,
        question_index: realtimeData.question_index,
        round_index: realtimeData.round_index,
        screen: realtimeData.screen,
      });
    }
  };

  const contextValue: RealtimeDataProps = {
    realtimeData,
    setRealtimeData,
    loading,
  };

  return (
    <RealtimeDataContext.Provider value={contextValue}>
      <Box sx={{ position: "absolute", right: 15 }}>
        {realtimeData?.question_index}
      </Box>
      {children}
    </RealtimeDataContext.Provider>
  );
}
