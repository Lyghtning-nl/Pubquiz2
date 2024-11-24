import { Button, LinearProgress, TextField } from "@mui/material";
import {
  useGameContext,
  validateGameCodeAndReturnGame,
  ValidateGameCodeAndReturnGameReturn,
} from "../context/GameContext";
import { useEffect, useState } from "react";
import { Stack } from "@mui/system";
import { useHistory } from "react-router";
import { useCreateAppwriteUserSession } from "../hooks/appwriteApiRequest";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import { IonContent, IonPage } from "@ionic/react";

export default function EnterGame() {
  const {
    loading: createUserAndSessionLoading,
    error,
    createUserAndSession,
  } = useCreateAppwriteUserSession();
  const [validationResult, setValidationResult] =
    useState<ValidateGameCodeAndReturnGameReturn | null>(null);
  const [gameCodeInput, setGamecodeInput] = useState("");
  const gameContext = useGameContext();
  const appwriteUserContext = useAppwriteUserContext();
  const history = useHistory();

  const resumeGame = () => {
    history.push("/player");
  };

  const validateGameCode = async () => {
    if (gameCodeInput === "") return;

    const result = await validateGameCodeAndReturnGame(gameCodeInput);

    setValidationResult(result);

    if (result.valid) {
      gameContext.setGame(result.game);

      await createUserAndSession();

      console.log("c");

      history.push("/player");
    }
  };

  const handleSubmit = () => {
    if (gameContext.game !== null && appwriteUserContext.user !== null) {
      resumeGame();
    } else {
      validateGameCode();
    }
  };

  useEffect(() => {
    if (!gameContext.loading && gameContext.game !== null)
      setGamecodeInput(gameContext.game.code);
  }, [gameContext]);

  if (
    gameContext.loading ||
    appwriteUserContext.loading ||
    createUserAndSessionLoading
  ) {
    return <LinearProgress />;
  }

  return (
    <IonPage>
      <IonContent fullscreen>
        <Stack>
          <TextField
            label="Game code"
            value={gameCodeInput}
            onChange={(e) => setGamecodeInput(e.target.value)}
            error={!!validationResult && !validationResult.valid}
            helperText={validationResult && validationResult?.message}
            disabled={gameContext?.game !== null}
          />

          <Button variant="contained" onClick={() => handleSubmit()}>
            {gameContext.game !== null ? "Verder spelen" : "Naar binnen!"}
          </Button>

          {gameContext.game !== null
            ? "Je hebt al een sessie!"
            : "Vul een gamecode in om te beginnen"}
        </Stack>
      </IonContent>
    </IonPage>
  );
}
