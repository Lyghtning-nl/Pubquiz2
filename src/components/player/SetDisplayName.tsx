import { useState } from "react";
import { Button, LinearProgress, TextField } from "@mui/material";
import { useUpdateAppwriteUserName } from "../../hooks/appwriteApiRequest";
import { TextScreen } from "../TextScreen";
import { useGameContext } from "../../context/GameContext";

export function SetDisplayName() {
  const { loading, error, updateUserName } = useUpdateAppwriteUserName();
  const [displayName, setDisplayName] = useState("");
  const { game } = useGameContext();

  const handleSubmit = async () => {
    if (displayName === "" || displayName.length < 3) return;
    updateUserName(displayName);
  };

  if (loading) return <LinearProgress />;

  return (
    <TextScreen
      h1={`Welkom in game "${game?.code}"! 👋`}
      h3="Laten we een teamnaam kiezen!"
    >
      <TextField
        label="Teamnaam..."
        value={displayName}
        size="medium"
        onChange={(e) => setDisplayName(e.target.value)}
      />
      <Button variant="contained" onClick={handleSubmit}>
        Verder gaan
      </Button>
    </TextScreen>
  );
}
