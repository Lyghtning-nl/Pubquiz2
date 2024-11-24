import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { useHistory } from "react-router";
import { appwriteAccount } from "../appwrite/config";
import {
  GAME_CONTEXT_LOCAL_STORAGE_KEY,
  useGameContext,
} from "../context/GameContext";

export const useLogout = () => {
  const appwriteUserContext = useAppwriteUserContext();
  const gameContext = useGameContext();
  const history = useHistory();

  const logout = async () => {
    if (appwriteUserContext.loading) return;

    try {
      await appwriteAccount.deleteSessions();

      appwriteUserContext.setUser(null);
      gameContext.setGame(null);

      history.push("/");
    } catch (error) {
      console.error("Logout failed", error);
    }
  };

  return logout;
};
