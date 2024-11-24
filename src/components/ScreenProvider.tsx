import { UserTypes } from "../appwrite/types";
import { useGameContext } from "../context/GameContext";
import { useEffect } from "react";
import { useHistory } from "react-router-dom";
import { LinearProgress } from "@mui/material";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { useRealtimeDataContext } from "../context/RealtimeDataContext";
import { PlayerIndex } from "../pages/player/screens/PlayerIndex";
import { MasterIndex } from "../pages/master/screens/MasterIndex";

type ScreenProviderProps = {
  userType: UserTypes;
};

export default function ScreenProvider({ userType }: ScreenProviderProps) {
  const realtimeDataContext = useRealtimeDataContext();
  const appwriteUserContext = useAppwriteUserContext();
  const gameContext = useGameContext();
  const history = useHistory();
  const currentScreen = realtimeDataContext.realtimeData?.screen;

  const loading =
    gameContext.loading ||
    appwriteUserContext.loading ||
    realtimeDataContext.loading;

  const gameAndUserValid =
    gameContext.game !== null && appwriteUserContext.user !== null;

  useEffect(() => {
    if (!loading && !gameAndUserValid) {
      history.push("/");
    }
  }, [loading, gameAndUserValid, history]);

  if (!gameAndUserValid) return null;

  return loading ? (
    <LinearProgress />
  ) : (
    (() => {
      switch (userType) {
        case "player":
          if (currentScreen === "index") return <PlayerIndex />;
          break;
        case "center":
          // return <Center />;
          break;
        case "master":
          if (currentScreen === "index") return <MasterIndex />;
        default:
          return null;
      }
    })()
  );
}
