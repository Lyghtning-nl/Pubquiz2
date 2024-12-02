import {
  Avatar,
  Card,
  CardContent,
  CircularProgress,
  IconButton,
  List,
  ListItem,
  ListItemAvatar,
  ListItemText,
  Stack,
  Typography,
} from "@mui/material";
import { QuestionAnswer, Audiotrack, DataArray } from "@mui/icons-material";
import { TextScreen } from "../../../components/TextScreen";
import { useCallback, useEffect, useState } from "react";
import { QuestionDocument } from "../../../appwrite/types";
import { appwriteDb } from "../../../appwrite/database";
import useSound from "use-sound";

export function Assignment2() {
  const [enabled, setEnabled] = useState(false);
  const [questionDocuments, setQuestionDocuments] = useState<
    QuestionDocument[] | null
  >(null);
  const [playDingDongSound, dingDongSoundOptions] = useSound(
    "/assets/guest-lecture/fx/doorbell.mp3"
  );

  const enableAudio = () => {
    playDingDongSound();
    setEnabled(true);
  };

  const listJSON = () => {
    let JSON = "";

    questionDocuments?.map((questionDocument, index) => {
      JSON = JSON + `"${index + 1}": ${questionDocument.data}`;

      if (index + 1 < questionDocuments.length) JSON = JSON + ",";
    });

    console.log(JSON);
  };

  const listQuestionDocuments = useCallback(() => {
    appwriteDb.questions.list().then((response) => {
      setQuestionDocuments(response.documents as QuestionDocument[]);
    });
  }, []);

  const addQuestionDocument = useCallback(
    (newQuestionDocument: QuestionDocument) => {
      setQuestionDocuments((prevQuestionDocument) => {
        if (!prevQuestionDocument) return [newQuestionDocument];
        return [...prevQuestionDocument, newQuestionDocument];
      });
    },
    []
  );

  useEffect(() => {
    listQuestionDocuments();

    const unsubscribe = appwriteDb.questions.subscribe((response) => {
      const newQuestionDocument = response.payload as QuestionDocument;

      addQuestionDocument(newQuestionDocument);

      playDingDongSound();
    }, ".documents");

    return () => unsubscribe();
  }, []);

  return (
    <TextScreen h1="De opdracht 2 / 2">
      <Typography variant="h2">
        Stuur je vraag in! <QuestionAnswer />
      </Typography>

      <Typography variant="h3">
        <List>
          <ListItem>
            <ListItemAvatar>
              <Avatar>1</Avatar>
            </ListItemAvatar>
            <ListItemText
              primary={
                <>
                  <Typography variant="h3">
                    Ga in je browser naar http://localhost:5173/opdracht
                  </Typography>{" "}
                </>
              }
            />
          </ListItem>
        </List>
      </Typography>

      <Stack alignItems="center" gap={2}>
        <CircularProgress />

        <Stack direction="row" gap={2} flexWrap="wrap">
          {questionDocuments?.map((questionDocument) => {
            return (
              <Card key={questionDocument.$id}>
                <CardContent>{questionDocument.student ?? "..."}</CardContent>
              </Card>
            );
          })}
        </Stack>

        {!enabled && (
          <IconButton onClick={() => enableAudio()}>
            <Audiotrack />
          </IconButton>
        )}

        <IconButton onClick={() => listJSON()}>
          <DataArray />
        </IconButton>
      </Stack>
    </TextScreen>
  );
}
