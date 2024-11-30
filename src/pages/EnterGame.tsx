import { Alert, Button, LinearProgress, TextField } from "@mui/material";
import {
  useGameContext,
  validateGameCodeAndReturnGame,
  ValidateGameCodeAndReturnGameReturn,
} from "../context/GameContext";
import { useEffect, useState } from "react";
import { Container } from "@mui/material";
import { useHistory } from "react-router";
import { useCreateAppwriteUserSession } from "../hooks/appwriteApiRequest";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import Wrapper from "../Wrapper";
import { TextScreen } from "../components/TextScreen";

export default function EnterGame() {
  const {
    loading: createUserAndSessionAndMembershipLoading,
    error,
    createUserAndSessionAndMembership,
  } = useCreateAppwriteUserSession();
  const [validationResult, setValidationResult] =
    useState<ValidateGameCodeAndReturnGameReturn | null>(null);
  const [gameCodeInput, setGamecodeInput] = useState("");
  const [isValidating, setIsValidating] = useState(false);
  const gameContext = useGameContext();
  const appwriteUserContext = useAppwriteUserContext();
  const history = useHistory();

  const globalLoading =
    gameContext.loading ||
    appwriteUserContext.loading ||
    createUserAndSessionAndMembershipLoading ||
    isValidating;

  const resumeGame = () => {
    history.replace("/player");
  };

  const validateGameCodeAndCreateUser = async () => {
    if (gameCodeInput === "") return;

    setIsValidating(true);

    const result = await validateGameCodeAndReturnGame(gameCodeInput);

    setValidationResult(result);

    if (result.valid) {
      gameContext.setGame(result.game);
      await createUserAndSessionAndMembership(gameCodeInput);

      history.replace("/player");
    } else {
      setIsValidating(false);
    }
  };

  const handleSubmit = () => {
    if (gameContext.game !== null && appwriteUserContext.user !== null) {
      resumeGame();
    } else {
      validateGameCodeAndCreateUser();
    }
  };

  useEffect(() => {
    if (!gameContext.loading && gameContext.game !== null)
      setGamecodeInput(gameContext.game.code);
  }, [gameContext]);

  if (globalLoading) {
    return <LinearProgress />;
  }

  return (
    <Wrapper>
      <TextScreen
        h1="🎮 Welkom bij PubQuiz 2.0! 👋"
        h3="Om te beginnen vul je hier hieronder jouw Game Code in. "
      >
        <TextField
          label="Game code"
          value={gameCodeInput}
          onChange={(e) => setGamecodeInput(e.target.value)}
          error={!!validationResult && !validationResult.valid}
          helperText={validationResult && validationResult?.message}
          disabled={gameContext?.game !== null || isValidating}
        />

        <Button
          variant="contained"
          onClick={() => handleSubmit()}
          disabled={isValidating}
          size="large"
        >
          {gameContext.game !== null ? "Verder spelen" : "Naar binnen!"}
        </Button>

        {gameContext.game !== null && (
          <Container maxWidth="sm" sx={{ py: 10 }}>
            <Alert severity="success">
              Je hebt al een actieve sessie in kamer
              <strong> {gameContext.game?.code}.</strong>
            </Alert>
          </Container>
        )}
      </TextScreen>
    </Wrapper>
  );
}
