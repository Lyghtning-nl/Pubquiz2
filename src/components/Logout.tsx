import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { useHistory } from "react-router";
import { appwriteAccount } from "../appwrite/config";
import { useGameContext } from "../context/GameContext";
import { Button } from "@mui/material";

export const Logout = () => {
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

  return (
    <Button
      color="error"
      variant="contained"
      size="small"
      onClick={logout}
      sx={{ position: "absolute", bottom: 15, left: 15, zIndex: 5 }}
    >
      Uitloggen
    </Button>
  );
};
