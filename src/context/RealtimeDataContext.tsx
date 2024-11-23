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
  const [realtimeData, setRealtimeData] = useState<RealtimeDataDocument | null>(
    null
  );
  const [loading, setLoading] = useState(true);
  const gameContext = useContext(GameContext);

  // console.log(gameContext?.game);

  // const getRealtimeData = useCallback(() => {
  //   appwriteDb.realtime_data.list().then((response) => {
  //     setRealtimeData(response.documents as RealtimeDataDocument[]);
  //     setLoading(false);
  //   });
  // }, []);

  // useEffect(() => {
  //   if (!loading && useGameContext?.game.code === "")
  //     return setError("No roomCode available");

  //   getRealtimeData();

  //   const fetchData = () => {
  //     // onValue(
  //     //   ref(
  //     //     database,
  //     //     `/games/${useGameContext?.room.code}${RTDB_LOCATION_REALTIMEDATA}`
  //     //   ),
  //     //   (snapshot) => {
  //     //     const realtimeData: RealtimeDataEntries = snapshot.val();
  //     //     setData(realtimeData);
  //     //     setLoading(false);
  //     //   }
  //     // );
  //   };

  //   const unsubscribe = appwriteDb.realtime_data.subscribe(() => {
  //     // getGames();
  //   });

  //   return () => unsubscribe();
  // }, [setRealtimeData, useGameContext, loading]);

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
