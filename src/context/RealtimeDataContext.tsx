import {
  Dispatch,
  ReactNode,
  SetStateAction,
  createContext,
  useCallback,
  useContext,
  useEffect,
  useState,
} from "react";
import { GameContext } from "./GameContext";
import { appwriteDb } from "../appwrite/database";
import { RealtimeDataDocument } from "../appwrite/types";

export interface RealtimeDataProps {
  realtimeData: RealtimeDataDocument[];
  setRealtimeData: Dispatch<SetStateAction<RealtimeDataDocument[]>>;
  loading: boolean;
  error: string | boolean;
}

interface RealtimeDataProviderProps {
  children: ReactNode;
}

export const useRealtimeDataContext = () => {
  const realtimeData = useContext(RealtimeDataContext);

  return realtimeData;
};

export const RealtimeDataContext = createContext<RealtimeDataProps | undefined>(
  undefined
);

export function RealtimeDataContextProvider({
  children,
}: RealtimeDataProviderProps) {
  const [realtimeData, setRealtimeData] = useState<RealtimeDataDocument[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<RealtimeDataProps["error"]>(false);
  const useGameContext = useContext(GameContext);

  const contextValue: RealtimeDataProps = {
    realtimeData,
    setRealtimeData,
    loading,
    error,
  };

  const getRealtimeData = useCallback(() => {
    appwriteDb.realtime_data.list().then((response) => {
      setRealtimeData(response.documents as RealtimeDataDocument[]);
      setLoading(false);
    });
  }, []);

  useEffect(() => {
    if (!loading && useGameContext?.game.code === "")
      return setError("No roomCode available");

    getRealtimeData();

    const fetchData = () => {
      // onValue(
      //   ref(
      //     database,
      //     `/games/${useGameContext?.room.code}${RTDB_LOCATION_REALTIMEDATA}`
      //   ),
      //   (snapshot) => {
      //     const realtimeData: RealtimeDataEntries = snapshot.val();
      //     setData(realtimeData);
      //     setLoading(false);
      //   }
      // );
    };

    const unsubscribe = appwriteDb.realtime_data.subscribe(() => {
      // getGames();
    });

    return () => unsubscribe();
  }, [setRealtimeData, useGameContext, loading]);

  return (
    <RealtimeDataContext.Provider value={contextValue}>
      {children}
    </RealtimeDataContext.Provider>
  );
}
