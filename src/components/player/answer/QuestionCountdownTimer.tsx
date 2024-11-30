import {
  Box,
  LinearProgress,
  LinearProgressProps,
  Stack,
  Typography,
} from "@mui/material";
import { useEffect, useState } from "react";
import { DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS } from "../../../questionData";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";

type QuestionCountdownTimerProps = {
  handleCountdownEndMethod: (submit: boolean) => void;
};

export const QuestionCountdownTimer = (props: QuestionCountdownTimerProps) => {
  const { currentQuestion } = useCurrentQuestion();
  const { realtimeData } = useRealtimeDataContext();

  if (!realtimeData || !currentQuestion) return;

  return (
    <LinearWithValueLabel
      countdownSeconds={
        currentQuestion?.countdown ?? DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS
      }
      active={realtimeData.countdown_timer_active ?? false}
      onEnd={() => {
        props.handleCountdownEndMethod(true);
      }}
    />
  );
};

function LinearProgressWithLabel(
  props: LinearProgressProps & { value: number; label: number }
) {
  return (
    <Stack alignItems="center" direction="row">
      <Box sx={{ width: "100%", mr: 1 }}>
        <LinearProgress variant="determinate" {...props} />
      </Box>

      <Typography variant="body1" color="text.secondary">{`${Math.round(
        props.label
      )}`}</Typography>
    </Stack>
  );
}

function LinearWithValueLabel(props: {
  active: boolean;
  onEnd: () => void;
  countdownSeconds: number;
}) {
  const { active, onEnd, countdownSeconds } = props;
  const [progress, setProgress] = useState(countdownSeconds);
  const [shouldCallOnEnd, setShouldCallOnEnd] = useState(false);

  useEffect(() => {
    let timer: NodeJS.Timeout;

    const updateProgress = () => {
      setProgress((prevProgress) => {
        const updatedProgress = Math.max(prevProgress - 1, 0);

        if (updatedProgress === 0) {
          setShouldCallOnEnd(true);
          setProgress(countdownSeconds);
          clearInterval(timer);
        }

        return updatedProgress;
      });
    };

    if (active) {
      timer = setInterval(updateProgress, 1000);
    }

    return () => {
      setProgress(countdownSeconds);
      clearInterval(timer);
    };
  }, [active]);

  useEffect(() => {
    if (shouldCallOnEnd) {
      onEnd();
      setShouldCallOnEnd(false);
    }
  }, [shouldCallOnEnd, onEnd]);

  return (
    <Box sx={{ width: "100%" }}>
      <LinearProgressWithLabel
        value={(progress / countdownSeconds) * 100}
        label={progress}
      />
    </Box>
  );
}
