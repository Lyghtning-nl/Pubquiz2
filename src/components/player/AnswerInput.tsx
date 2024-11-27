import {
  Box,
  Button,
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
import { CorrectnessAnimation } from "./answer/CorrectnessAnimation";
import { Query } from "appwrite";

export type AnswerInputTypeProps = {
  locked: boolean;
  answer: string;
  error: boolean;
  setAnswer: (value: string) => void;
};

export function AnswerInput() {
  const currentQuestion = useCurrentQuestion();
  const { user } = useAppwriteUserContext();
  const [answerDocument, setAnswerDocument] = useState<AnswerDocument | null>(
    null
  );
  const [checkExistingAnswerLoading, setCheckExistingAnswerLoading] =
    useState(false);
  const [submitLoading, setSubmitLoading] = useState(false);
  const [locked, setLocked] = useState(false);
  const [answer, setAnswer] = useState("");
  const [error, setError] = useState(false);
  const [correctness, setCorrectness] = useState<boolean | null>(null);

  const { realtimeData } = useRealtimeDataContext();

  useEffect(() => {
    const checkExistingAnswer = async () => {
      if (realtimeData !== null && user !== null) {
        setCheckExistingAnswerLoading(true);

        const existingAnswer = await appwriteDb.answers.list([
          Query.equal("question_id", realtimeData.question_id),
          Query.equal("user_id", user.$id),
        ]);

        if (existingAnswer.total > 0) {
          setAnswerDocument(existingAnswer.documents[0] as AnswerDocument);
        }

        setCheckExistingAnswerLoading(false);
      }
    };

    checkExistingAnswer();
  }, [realtimeData, user]);

  useEffect(() => {
    if (answerDocument === null) return;

    setLocked(true);
    setAnswer(answerDocument.content);
    setCorrectness(answerDocument.correct);

    const unsubscribe = appwriteDb.answers.subscribe((response) => {
      setAnswerDocument(response.payload as AnswerDocument);
    }, `.documents.${answerDocument.$id}`);

    return () => unsubscribe();
  }, [answerDocument]);

  const handleSubmit = (countdownEnded: boolean = false) => {
    if (countdownEnded && answerDocument !== null) return; //Countdown ended, but answer already given

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
        setAnswerDocument(response as AnswerDocument);
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
            disabled={
              answer.length === 0 ||
              locked ||
              submitLoading ||
              checkExistingAnswerLoading
            }
            onClick={() => handleSubmit()}
          >
            {!submitLoading && !checkExistingAnswerLoading && !locked && (
              <>
                Antwoord verzenden <SendIcon sx={{ ml: 2 }} />
              </>
            )}

            {!submitLoading && !checkExistingAnswerLoading && locked && (
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
