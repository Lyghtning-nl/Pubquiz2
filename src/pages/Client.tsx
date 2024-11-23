import { useEffect, useState } from "react";
import {
  useAppwriteUserContext,
  useCreateAppwriteUserSession,
} from "../context/AppwriteUserContext";
import { Stack } from "@mui/system";
import { Button, LinearProgress, TextField, Typography } from "@mui/material";
import config from "../config.json";

export default function Client() {
  const appwriteUser = useAppwriteUserContext();

  useEffect(() => {
    console.log(appwriteUser);
  }, [appwriteUser]);

  if (appwriteUser.loading) return <LinearProgress />;
  if (appwriteUser.user === null) return <SetDisplayName />;
}

export function SetDisplayName() {
  const { loading, session, error, createSession } =
    useCreateAppwriteUserSession();
  const [displayName, setDisplayName] = useState("");
  const [sessionId, setSessionId] = useState<string | null>(null);

  const [response, setResponse] = useState("");
  const [name, setName] = useState("");

  const handleSubmit = async () => {
    try {
      const res = await fetch(config.expressEndpoint);
      if (!res.ok) throw new Error("Failed to fetch");
      const data = await res.json();
      setResponse(data.message);
    } catch (err) {
      setResponse("Error: Could not connect to the server.");
    }
  };

  if (loading) return <LinearProgress />;

  return (
    <Stack>
      {response}
      <TextField
        label="Kies een teamnaam"
        value={displayName}
        onChange={(e) => setDisplayName(e.target.value)}
      />
      <Button variant="contained" onClick={handleSubmit}>
        Opslaan
      </Button>

      {/* Toon het sessie ID als de sessie succesvol is aangemaakt */}
      {sessionId && (
        <Typography variant="body1" color="primary" mt={2}>
          Sessies ID: {sessionId}
        </Typography>
      )}

      {/* Foutmelding als er iets misgaat */}
      {error && (
        <Typography variant="body1" color="error" mt={2}>
          Error: {error.message}
        </Typography>
      )}
    </Stack>
  );
}
