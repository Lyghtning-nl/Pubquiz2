import { Box, FormControlLabel, Radio, RadioGroup } from "@mui/material";
import { AnswerInputTypeProps } from "../AnswerInput";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";

export const MultipleChoiceAnswer = (props: AnswerInputTypeProps) => {
  const { locked, error, answer, setAnswer } = props;
  const q = useCurrentQuestion();

  if (!q.options) return null;

  return (
    <Box
      sx={{
        display: "grid",
        gridTemplate: "auto / auto",
        gap: "5px",
        alignItems: "center",
      }}
    >
      <RadioGroup defaultValue={Object.keys(q)[0]}>
        {Object.keys(q.options).map((option) => {
          if (q.options) {
            const optionValue = q.options[option];

            return (
              q.options && (
                <FormControlLabel
                  disabled={locked}
                  value={option}
                  control={<Radio />}
                  label={optionValue}
                  key={option}
                  onClick={
                    !locked ? () => setAnswer(optionValue) : () => void 0
                  }
                />
              )
            );
          }
        })}
      </RadioGroup>
    </Box>
  );
};
