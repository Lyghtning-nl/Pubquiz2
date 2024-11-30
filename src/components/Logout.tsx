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

    appwriteAccount
      .deleteSessions()
      .then(() => {
        // Nothing to do
      })
      .finally(() => {
        // Clean up in finally,to also make sure session gets reset when User is delete in Apprite. This would cause an error.
        appwriteUserContext.setUser(null);
        gameContext.setGame(null);

        history.replace("/");
      });
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
