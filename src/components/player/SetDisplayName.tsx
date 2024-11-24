import { useState } from "react";
import { Button, LinearProgress, TextField } from "@mui/material";
import { Stack } from "@mui/system";
import { useUpdateAppwriteUserName } from "../../hooks/appwriteApiRequest";

export function SetDisplayName() {
  const { loading, error, updateUserName } = useUpdateAppwriteUserName();
  const [displayName, setDisplayName] = useState("");

  const handleSubmit = async () => {
    if (displayName === "" || displayName.length < 3) return;
    updateUserName(displayName);
  };

  if (loading) return <LinearProgress />;

  return (
    <Stack>
      <TextField
        label="Kies een teamnaam"
        value={displayName}
        onChange={(e) => setDisplayName(e.target.value)}
      />
      <Button variant="contained" onClick={handleSubmit}>
        Maak account
      </Button>
      {error}
    </Stack>
  );
}
