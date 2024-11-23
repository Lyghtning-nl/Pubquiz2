import { UserTypes } from "../appwrite/types";
import Center from "./Center";
import Client from "./Client";
import Master from "./Master";
import { useGameContext } from "../context/GameContext";
import { useEffect } from "react";
import { useHistory } from "react-router-dom";
import { LinearProgress } from "@mui/material";

type ScreenProviderProps = {
  userType: UserTypes;
};

export default function ScreenProvider({ userType }: ScreenProviderProps) {
  const gameContext = useGameContext();
  const history = useHistory();

  useEffect(() => {
    if (!gameContext.loading && gameContext.game === null) {
      history.push("/");
    }
  }, [gameContext, history]);

  if (gameContext.loading) return <LinearProgress />;

  if (gameContext.game === null) return null;

  switch (userType) {
    case "client":
      return <Client />;
    case "center":
      return <Center />;
    case "master":
      return <Master />;
    default:
      return null;
  }
}
