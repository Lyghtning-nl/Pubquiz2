import { Button } from "@mui/material";
import { useGameContext } from "../context/GameContext";

export default function Authenticate() {
  const gameContext = useGameContext();

  return (
    <>
      {/* <input
        value={gameCodeInput}
        onChange={(e) => setGamecodeInput(e.target.value)}
      />
      <Button
        variant="contained"
        endIcon={<Send />}
        onClick={() => gameContext?.setGame({ code: gameCodeInput })}
      >
        Opslaan
      </Button> */}
    </>
  );
}
