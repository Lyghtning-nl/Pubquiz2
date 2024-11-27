import { UserTypes } from "../appwrite/types";
import { useGameContext } from "../context/GameContext";
import { useEffect } from "react";
import { useHistory } from "react-router-dom";
import { CircularProgress, LinearProgress } from "@mui/material";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { useRealtimeDataContext } from "../context/RealtimeDataContext";
import { PlayerIndexScreen } from "../pages/player/screens/PlayerIndexScreen";
import { MasterIndexScreen } from "../pages/master/screens/MasterIndexScreen";
import { GenericIntroScreen } from "../pages/generic/screens/GenericIntroScreen";
import { CenterIndexScreen } from "../pages/center/screens/CenterIndexScreen";
import { MasterIntroScreen } from "../pages/master/screens/MasterIntroScreen";
import { PlayerArenaScreen } from "../pages/player/screens/PlayerArenaScreen";
import { CenterArenaScreen } from "../pages/center/screens/CenterArenaScreen";

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
    <CircularProgress />
  ) : (
    (() => {
      switch (userType) {
        case "player":
          if (currentScreen === "index") return <PlayerIndexScreen />;
          if (currentScreen === "intro") return <GenericIntroScreen />;
          if (currentScreen === "arena") return <PlayerArenaScreen />;
          break;
        case "center":
          if (currentScreen === "index") return <CenterIndexScreen />;
          if (currentScreen === "intro") return <GenericIntroScreen />;
          if (currentScreen === "arena") return <CenterArenaScreen />;
          break;
        case "master":
          if (currentScreen === "index") return <MasterIndexScreen />;
          if (currentScreen === "intro") return <MasterIntroScreen />;
        default:
          return null;
      }
    })()
  );
}
