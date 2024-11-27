import { TextField } from "@mui/material";
import { AnswerInputTypeProps } from "../AnswerInput";

export const TextAnswer = (props: AnswerInputTypeProps) => {
  const { locked, error, answer, setAnswer } = props;
  
  return (
    <TextField
      variant="outlined"
      label="Wat is jullie antwoord?"
      type="text"
      autoComplete="off"
      name="answer"
      disabled={locked}
      error={error}
      value={answer}
      onChange={(e) => setAnswer(e.target.value)}
    />
  );
};
