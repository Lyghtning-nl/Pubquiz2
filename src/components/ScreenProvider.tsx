import { useEffect } from "react";
import { useHistory } from "react-router-dom";
import { CircularProgress } from "@mui/material";

import { UserTypes, RealtimeDataDocument } from "../appwrite/types";
import { useGameContext } from "../context/GameContext";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { useRealtimeDataContext } from "../context/RealtimeDataContext";

import { PlayerIndexScreen } from "../pages/player/screens/PlayerIndexScreen";
import { MasterIndexScreen } from "../pages/master/screens/MasterIndexScreen";
import { GenericIntroScreen } from "../pages/generic/screens/GenericIntroScreen";
import { CenterIndexScreen } from "../pages/center/screens/CenterIndexScreen";
import { MasterIntroScreen } from "../pages/master/screens/MasterIntroScreen";
import { PlayerArenaScreen } from "../pages/player/screens/PlayerArenaScreen";
import { CenterArenaScreen } from "../pages/center/screens/CenterArenaScreen";
import { GenericSummaryScreen } from "../pages/generic/screens/GenericSummaryScreen";
import { TextScreen } from "./TextScreen";
import { MasterArenaScreen } from "../pages/master/screens/MasterArenaScreen";

type ScreenProviderProps = {
  userType: UserTypes;
};

type ScreenMap = {
  [K in UserTypes]: Partial<
    Record<RealtimeDataDocument["screen"], React.ReactNode>
  >;
};

const screenMap: ScreenMap = {
  player: {
    index: <PlayerIndexScreen />,
    intro: <GenericIntroScreen />,
    arena: <PlayerArenaScreen />,
    summary: <GenericSummaryScreen />,
  },
  center: {
    index: <CenterIndexScreen />,
    intro: <GenericIntroScreen />,
    arena: <CenterArenaScreen />,
    summary: <GenericSummaryScreen />,
  },
  master: {
    index: <MasterIndexScreen />,
    intro: <MasterIntroScreen />,
    arena: <MasterArenaScreen />,
    summary: <MasterArenaScreen />,
  },
};

export default function ScreenProvider({ userType }: ScreenProviderProps) {
  const { loading: realtimeDataLoading, realtimeData } =
    useRealtimeDataContext();
  const appwriteUserContext = useAppwriteUserContext();
  const gameContext = useGameContext();
  const history = useHistory();

  const loading =
    gameContext.loading || appwriteUserContext.loading || realtimeDataLoading;

  const gameAndUserValid =
    gameContext.game !== null && appwriteUserContext.user !== null;

  useEffect(() => {
    if (!loading && !gameAndUserValid) {
      history.replace("/");
    }
  }, [loading, gameAndUserValid, history]);

  if (!gameAndUserValid || !realtimeData) {
    return null;
  }

  const currentScreen = realtimeData.screen;

  const currentScreenComponent = screenMap[userType][currentScreen] ?? (
    <TextScreen h1="Verdwaald?" />
  );

  return currentScreenComponent;
}
