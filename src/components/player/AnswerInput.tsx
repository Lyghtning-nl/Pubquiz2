import { Cancel, CheckCircle } from "@mui/icons-material";
import {
  alpha,
  Box,
  Button,
  CircularProgress,
  Grow,
  LinearProgress,
  LinearProgressProps,
  Stack,
  Typography,
} from "@mui/material";
import SendIcon from "@mui/icons-material/Send";
import CheckIcon from "@mui/icons-material/Check";
import { useEffect, useState } from "react";
import { DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS } from "../../questionData";
import { MultipleChoiceAnswer } from "./answer/MultipleChoiceAnswer";
import { TextAnswer } from "./answer/TextAnswer";
import { useRealtimeDataContext } from "../../context/RealtimeDataContext";
import { useCurrentQuestion } from "../../hooks/useCurrentQuestion";
import { appwriteDb } from "../../appwrite/database";
import { AnswerDocument } from "../../appwrite/types";
import { useAppwriteUserContext } from "../../context/AppwriteUserContext";
import { Query } from "appwrite";

const CorrectnessAnimation = (props: {
  correct: boolean | null;
  correctAnswer: string;
}) => {
  const { correct, correctAnswer } = props;
  const [visible, setVisible] = useState(true);

  useEffect(() => {
    setVisible(true);

    const timeout = setTimeout(() => {
      setVisible(false);
    }, 5000);

    return () => {
      clearTimeout(timeout);
    };
  }, [correct]);

  const getIcon = (): any => {
    if (correct)
      return (
        <CheckCircle sx={(theme) => ({ fill: theme.palette.success.main })} />
      );
    if (!correct)
      return <Cancel sx={(theme) => ({ fill: theme.palette.error.main })} />;
  };

  return (
    <Box
      sx={(theme) => ({
        zIndex: 5,
        background: alpha(theme.palette.background.paper, 0.7),
        backdropFilter: "blur(10px)",
        borderRadius: theme.shape.borderRadius,
        boxShadow: theme.shadows[5],
        position: "fixed",
        top: "50%",
        left: "50%",
        transform: "translate(-50%, -50%)",
        display: `${visible ? "block" : "none"}`,
      })}
    >
      <Grow
        in={visible}
        style={{
          transformOrigin: "center",
          width: "80vw",
          height: "80vw",
        }}
      >
        {getIcon()}
      </Grow>
      <Box
        sx={{
          padding: 2,
          textAlign: "center",
        }}
      >
        <Typography variant="h4">&quot;{correctAnswer}&quot;</Typography>
      </Box>
    </Box>
  );
};

export type AnswerInputTypeProps = {
  locked: boolean;
  answer: string;
  error: boolean;
  setAnswer: (value: string) => void;
};

export function AnswerInput() {
  const currentQuestion = useCurrentQuestion();
  const { user } = useAppwriteUserContext();

  const [answerDocumentId, setAnswerDocumentId] = useState<string | null>(null);

  const [answerDocument, setAnswerDocument] = useState<AnswerDocument | null>(
    null
  );
  const [submitLoading, setSubmitLoading] = useState(false);
  const [locked, setLocked] = useState(false);
  const [answer, setAnswer] = useState("");
  const [error, setError] = useState(false);
  const [correctness, setCorrectness] = useState<boolean | null>(null);

  // const [loading, updateUserAnswers] = useUpdateUserAnswersInRtdb();
  // const [userAnswerFields] = useOnValueActiveUserLiveQuestionIndexAnswer();
  const { realtimeData } = useRealtimeDataContext();

  useEffect(() => {
    if (!answerDocumentId) return;

    const unsubscribe = appwriteDb.answers.subscribe((response) => {
      setAnswerDocument(response.payload as AnswerDocument);
    }, `.documents.${answerDocumentId}`);

    return () => unsubscribe();
  }, [answerDocumentId]);

  useEffect(() => {
    if (answerDocument !== null) {
      setLocked(true);
      setAnswer(answerDocument.content);
      setCorrectness(answerDocument.correct);
    }
  }, [answerDocument]);

  const handleSubmit = (countdownEnded: boolean = false) => {
    setSubmitLoading(true);

    let finalAnswer = answer;

    if (countdownEnded && answer === "") {
      finalAnswer = "timeout";
    }

    appwriteDb.answers
      .create({
        input_type: "Keyboard",
        question_id: realtimeData?.question_id,
        content: finalAnswer,
        user_id: user?.$id,
      } as AnswerDocument)
      .then((response) => {
        setAnswerDocumentId(response.$id);
        setLocked(true);
      })
      .finally(() => setSubmitLoading(false));
  };

  const handleCountdownEnd = () => {
    handleSubmit(true);
  };

  const renderQuestionType = () => {
    switch (currentQuestion.type) {
      case "multi":
        return (
          <MultipleChoiceAnswer
            locked={locked}
            error={error}
            answer={answer}
            setAnswer={setAnswer}
          />
        );
      default:
        return (
          <TextAnswer
            locked={locked}
            error={error}
            answer={answer}
            setAnswer={setAnswer}
          />
        );
    }
  };

  return (
    <>
      {correctness != null && (
        <CorrectnessAnimation
          correct={correctness}
          correctAnswer={currentQuestion?.correct ?? ""}
        />
      )}

      <Stack gap={1}>
        {renderQuestionType()}

        {realtimeData && (
          <Box sx={{ width: "100%" }}>
            <LinearWithValueLabel
              countdownSeconds={
                currentQuestion?.countdown ??
                DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS
              }
              active={realtimeData.countdown_timer_active ?? false}
              onEnd={() => {
                handleCountdownEnd();
              }}
            />
          </Box>
        )}
        <Stack direction="row" alignItems="center" gap={5}>
          <Button
            sx={{
              flexGrow: 1,
            }}
            type="submit"
            size="large"
            variant="contained"
            disabled={answer.length === 0 || locked || submitLoading}
            onClick={() => handleSubmit()}
          >
            {!submitLoading && !locked && (
              <>
                Antwoord verzenden <SendIcon sx={{ ml: 2 }} />
              </>
            )}

            {!submitLoading && locked && (
              <>
                Antwoord verzonden <CheckIcon sx={{ ml: 2 }} />
              </>
            )}
          </Button>
        </Stack>
      </Stack>
    </>
  );
}

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
