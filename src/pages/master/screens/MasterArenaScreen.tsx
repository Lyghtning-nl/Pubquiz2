import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Alert,
  alpha,
  Box,
  Button,
  ButtonGroup,
  Collapse,
  IconButton,
  LinearProgress,
  Stack,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Typography,
} from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import {
  DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS,
  questionData,
  QuestionDataOptions,
  RoundData,
} from "../../../questionData";
import { useCallback, useEffect, useState } from "react";
import {
  Cancel,
  CheckCircle,
  ExpandMore,
  KeyboardArrowDown,
  KeyboardArrowUp,
  Timer,
} from "@mui/icons-material";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";
import { useListMemberships } from "../../../hooks/useListMemberships";
import { appwriteDb } from "../../../appwrite/database";
import { AnswerDocument, RealtimeDataDocument } from "../../../appwrite/types";
import { Query } from "appwrite";
import useSound from "use-sound";
import config from "../../../../config.json";
import useTimer from "../../../hooks/useTimer";

export function MasterArenaScreen() {
  const { realtimeData } = useRealtimeDataContext();
  const { currentQuestion, round: roundFromCurrentQuestion } =
    useCurrentQuestion();

  if (!realtimeData || !currentQuestion) return null;

  return (
    <TextScreen h1="🎛️ QuizMaster - Command Center 🎛️">
      <Box sx={{ width: "100%" }}>
        {questionData.map((round, index) => (
          <RoundTree
            key={index}
            round={round}
            roundIndex={index}
            realtimeData={realtimeData}
            roundFromCurrentQuestion={roundFromCurrentQuestion}
          />
        ))}
      </Box>

      <ControlBar currentQuestion={currentQuestion} />
    </TextScreen>
  );
}

const RoundTree = ({
  round,
  roundIndex,
  realtimeData,
  roundFromCurrentQuestion,
}: {
  round: RoundData;
  roundIndex: number;
  realtimeData: RealtimeDataDocument;
  roundFromCurrentQuestion: number;
}) => {
  const [expanded, setExpanded] = useState(false);

  useEffect(() => {
    setExpanded(roundIndex === roundFromCurrentQuestion);
  }, [roundFromCurrentQuestion, roundIndex]);

  if (!realtimeData) return null;

  return (
    <Accordion expanded={expanded}>
      <AccordionSummary
        expandIcon={<ExpandMore />}
        onClick={() => setExpanded(!expanded)}
      >
        <Typography variant="h5">
          Ronde {roundIndex} - {round.title}
        </Typography>
      </AccordionSummary>
      <AccordionDetails>
        <TableContainer>
          <Table size="small">
            <TableHead>
              <TableRow>
                <TableCell></TableCell>
                <TableCell>Vraag</TableCell>
                <TableCell>Correct antwoord</TableCell>
              </TableRow>
            </TableHead>

            <TableBody>
              {Object.keys(questionData[roundIndex].questions).map(
                (questionId) => {
                  return (
                    <CollapsableQuestionRow
                      questionId={questionId}
                      key={questionId}
                      question={questionData[roundIndex].questions[questionId]}
                      realtimeQuestionId={realtimeData.question_id}
                    />
                  );
                }
              )}
            </TableBody>
          </Table>
        </TableContainer>
        <Box sx={{ textAlign: "center" }}>
          Einde ronde! Misschien wil je de tussenstand tonen?
        </Box>
      </AccordionDetails>
    </Accordion>
  );
};

const CollapsableQuestionRow = (props: {
  questionId: string;
  question: QuestionDataOptions;
  realtimeQuestionId: string | undefined;
}) => {
  const { questionId, question, realtimeQuestionId } = props;
  const [open, setOpen] = useState(false);

  useEffect(() => {
    if (realtimeQuestionId === questionId) {
      setOpen(true);
    }
  }, [realtimeQuestionId]);

  let activeStyle = {};

  if (realtimeQuestionId === questionId) {
    activeStyle = {
      fontWeight: "bold",
      fontSize: "1.2em !important",
    };
  }

  return (
    <>
      <TableRow
        hover
        sx={{
          "& > .MuiTableCell-root": { borderBottom: "unset" },
        }}
      >
        <TableCell>
          <IconButton
            aria-label="expand row"
            size="small"
            onClick={() => setOpen(!open)}
          >
            {open ? <KeyboardArrowUp /> : <KeyboardArrowDown />}
          </IconButton>
        </TableCell>

        <TableCell sx={activeStyle}>
          {question.text} {question?.audio && <> - 🎵</>}{" "}
          {question?.quizMasterHelpText && (
            <>
              <Alert severity="info" sx={{ display: "inline-flex" }}>
                {question.quizMasterHelpText}
              </Alert>
            </>
          )}
        </TableCell>
        <TableCell sx={activeStyle}>{question.correct}</TableCell>
      </TableRow>

      <TableRow sx={{ "&:last-child td, &:last-child th": { border: 0 } }}>
        <TableCell colSpan={3} style={{ paddingBottom: 0, paddingTop: 0 }}>
          <Collapse in={open} timeout="auto" unmountOnExit>
            <AnswersPerUser questionId={questionId} />
          </Collapse>
        </TableCell>
      </TableRow>
    </>
  );
};

const AnswersPerUser = ({ questionId }: { questionId: string }) => {
  const [answerDocumentsLoading, setAnswerDocumentsLoading] = useState(true);
  const { loading: membershipsLoading, memberships } = useListMemberships();
  const [answerDocuments, setAnswerDocuments] = useState<
    AnswerDocument[] | null
  >(null);

  const listAnswerDocuments = useCallback(() => {
    setAnswerDocumentsLoading(true);

    appwriteDb.answers
      .list([Query.equal("question_id", questionId)])
      .then((response) => {
        setAnswerDocuments(response.documents as AnswerDocument[]);
      })
      .finally(() => {
        setAnswerDocumentsLoading(false);
      });
  }, [questionId]);

  const addAnswerDocument = useCallback((newAnswerDocument: AnswerDocument) => {
    setAnswerDocuments((prevAnswerDocuments) => {
      if (!prevAnswerDocuments) return [newAnswerDocument];
      return [...prevAnswerDocuments, newAnswerDocument];
    });
  }, []);

  useEffect(() => {
    listAnswerDocuments();

    const unsubscribe = appwriteDb.answers.subscribe((response) => {
      const newAnswerDocument = response.payload as AnswerDocument;

      addAnswerDocument(newAnswerDocument);
    }, ".documents");

    return () => unsubscribe();
  }, []);

  if (membershipsLoading || !memberships || answerDocumentsLoading)
    return <LinearProgress />;

  return (
    <Box sx={{ my: 5 }}>
      <Typography variant="overline">Antwoorden per speler</Typography>
      <Table size="small">
        <TableHead>
          <TableRow>
            <TableCell>Speler</TableCell>
            <TableCell>Antwoord</TableCell>
            <TableCell>Validatie</TableCell>
          </TableRow>
        </TableHead>

        <TableBody>
          {memberships.map((membership) => {
            const answerDocument = answerDocuments?.find(
              (answerDocument) => answerDocument.user_id === membership.userId
            );

            return (
              <TableRow
                hover
                key={questionId + membership.$id}
                sx={{
                  "&:last-child td, &:last-child th": { border: 0 },
                }}
              >
                <TableCell>
                  <Typography variant="body1">{membership.userName}</Typography>
                </TableCell>
                <TableCell>
                  <Typography variant="body1">
                    {answerDocument?.content ?? <LinearProgress />}
                  </Typography>
                </TableCell>
                <TableCell>
                  {answerDocument && (
                    <ValidateGivenAnswer answerDocument={answerDocument} />
                  )}
                </TableCell>
              </TableRow>
            );
          })}
        </TableBody>
      </Table>
    </Box>
  );
};

const ValidateGivenAnswer = ({
  answerDocument,
}: {
  answerDocument: AnswerDocument;
}) => {
  const correct = answerDocument.correct;
  const [playFxWrong] = useSound("/assets/fx/wrong.mp3");
  const [playFxCorrect] = useSound("/assets/fx/correct.mp3");
  const [buttonState, setButtonState] = useState<boolean | null>(correct);

  const setCorrectness = (bool: boolean) => {
    fetch(config.expressEndpoint + "hue/flash", {
      method: "POST",
    });

    setButtonState(bool);

    appwriteDb.answers
      .update(answerDocument.$id, {
        correct: bool,
      })
      .then(() => {
        bool ? playFxCorrect() : playFxWrong();
      });
  };

  return (
    <>
      <ButtonGroup>
        <Button
          variant={
            typeof buttonState == "boolean" && buttonState
              ? "contained"
              : "outlined"
          }
          color="success"
          size="small"
          onClick={() => setCorrectness(true)}
        >
          <CheckCircle />
        </Button>
        <Button
          variant={
            typeof correct == "boolean" && !buttonState
              ? "contained"
              : "outlined"
          }
          color="error"
          size="small"
          onClick={() => setCorrectness(false)}
        >
          <Cancel />
        </Button>
      </ButtonGroup>
    </>
  );
};

const ControlBar = ({
  currentQuestion,
}: {
  currentQuestion: QuestionDataOptions;
}) => {
  const [timerActive, setTimerActive] = useState(false);

  const [progress, resetTimer] = useTimer({
    active: timerActive,
    onEnd: () => setTimerActive(false),
    countdownSeconds:
      currentQuestion?.countdown ?? DEFAULT_COUNTDOWN_PER_QUESTION_IN_SECONDS,
  });

  const { audio: questionAudio } = currentQuestion;

  return (
    <Box
      sx={(theme) => ({
        position: "sticky",
        bottom: `calc(${theme.spacing(3)} * -1)`,
        width: `calc(${theme.spacing(5)} + 100%)`,
        backdropFilter: "blur(2px)",
        background: alpha(theme.palette.background.paper, 0.7),
        display: "flex",
        alignItems: "center",
        gap: 3,
        justifyContent: "space-around",
        padding: theme.spacings.xxs,
        borderRadius: theme.shape.borderRadius,
        boxShadow: theme.shadows[1],
      })}
    >
      {questionAudio && (
        <Stack direction="row" alignItems="center" gap={2}>
          Vraag audio
          <audio controls src={questionAudio}>
            <source src={questionAudio} />
          </audio>
        </Stack>
      )}

      <Stack direction="row" alignItems="center" gap={2}>
        <Button
          color="success"
          variant="contained"
          size="extraSmall"
          onClick={() => setTimerActive(!timerActive)}
        >
          <Timer /> Timer {timerActive ? "stoppen" : "starten"} {progress}
        </Button>
      </Stack>
    </Box>
  );
};
