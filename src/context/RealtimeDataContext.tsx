import {
  ReactNode,
  createContext,
  useContext,
  useEffect,
  useState,
} from "react";

import { appwriteDb } from "../appwrite/database";
import { RealtimeDataDocument } from "../appwrite/types";
import { useAppwriteUserContext } from "./AppwriteUserContext";

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
  const { user } = useAppwriteUserContext();

  useEffect(() => {
    if (!user) {
      setRealtimeDataState(null);
      setLoading(false);
      return;
    }

    setLoading(true);
    appwriteDb.realtime_data
      .list()
      .then((response) => {
        if (response.documents.length > 0) {
          setRealtimeDataState(response.documents[0] as RealtimeDataDocument);
        } else {
          setRealtimeDataState(null);
        }
      })
      .catch((error) => {
        console.error("Error fetching realtime data:", error);
        setRealtimeDataState(null);
      })
      .finally(() => {
        setLoading(false);
      });
  }, [user]);

  useEffect(() => {
    if (!user) return;

    const unsubscribe = appwriteDb.realtime_data.subscribe((response) => {
      setRealtimeDataState(response.payload as RealtimeDataDocument);
    }, ".documents");

    return () => unsubscribe();
  }, [user]);

  const setRealtimeData = (realtimeData: RealtimeDataProps["realtimeData"]) => {
    if (realtimeData !== null) {
      setRealtimeDataState(realtimeData);

      appwriteDb.realtime_data.update(realtimeData?.$id, {
        countdown_timer_active: realtimeData.countdown_timer_active,
        question_id: realtimeData.question_id,
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
      {children}
    </RealtimeDataContext.Provider>
  );
}
