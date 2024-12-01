import { Button, Chip, CircularProgress, Typography } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";

export function Demo() {
  return (
    <TextScreen h1="Demo">
      <Typography variant="h2">
        PubQuiz 2.0 🪩 <Chip label="Where Tech meets Trivia" />
      </Typography>
      <Button
        onClick={() => window.open("http://localhost:5173/")}
        variant="contained"
      >
        Demo openen
      </Button>
      (Note to self: vergeet center screen niet)
    </TextScreen>
  );
}
