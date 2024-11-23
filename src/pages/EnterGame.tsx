import { Button, LinearProgress, TextField } from "@mui/material";
import {
  useGameContext,
  validateGameCodeAndReturnGame,
  ValidateGameCodeAndReturnGameReturn,
} from "../context/GameContext";
import { useEffect, useState } from "react";
import { Stack } from "@mui/system";
import { useHistory } from "react-router";

export default function EnterGame() {
  const [validationResult, setValidationResult] =
    useState<ValidateGameCodeAndReturnGameReturn | null>(null);
  const [gameCodeInput, setGamecodeInput] = useState("");
  const gameContext = useGameContext();
  const history = useHistory();

  const validateGameCode = async () => {
    if (gameCodeInput === "") return;

    const result = await validateGameCodeAndReturnGame(gameCodeInput);

    setValidationResult(result);

    if (result.valid) {
      gameContext.setGame(result.game);
      
      history.push("/client");
    }
  };

  useEffect(() => {
    if (!gameContext.loading && gameContext.game !== null)
      setGamecodeInput(gameContext.game.code);
  }, [gameContext]);

  if (gameContext.loading) {
    return <LinearProgress />;
  }

  return (
    <Stack>
      <TextField
        label="Game code"
        value={gameCodeInput}
        onChange={(e) => setGamecodeInput(e.target.value)}
        error={!!validationResult && !validationResult.valid}
        helperText={validationResult && validationResult?.message}
        disabled={gameContext?.game !== null}
      />
      <Button variant="contained" onClick={() => validateGameCode()}>
        {gameContext.game !== null ? "Verder spelen" : "Naar binnen!"}
      </Button>

      {gameContext.game !== null
        ? "Je hebt al een sessie!"
        : "Vul een gamecode in om te beginnen"}
    </Stack>
  );
}
