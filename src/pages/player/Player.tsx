import { useAppwriteUserContext } from "../../context/AppwriteUserContext";
import { Button, LinearProgress } from "@mui/material";
import { SetDisplayName } from "../../components/player/SetDisplayName";
import { useLogout } from "../../hooks/useLogout";

export default function Player() {
  const appwriteUserContext = useAppwriteUserContext();
  const logout = useLogout(); // Haal de logout-functie op

  if (appwriteUserContext.loading) return <LinearProgress />;
  if (appwriteUserContext.user?.name === "") return <SetDisplayName />;

  return (
    <>
      Hey {appwriteUserContext.user?.name}! <br />
      
      <Button color="error" variant="contained" onClick={logout}>
        Uitloggen
      </Button>
    </>
  );
}
