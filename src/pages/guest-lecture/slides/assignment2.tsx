import {
  Card,
  CardContent,
  CircularProgress,
  Stack,
  Typography,
} from "@mui/material";
import { QuestionAnswer } from "@mui/icons-material";
import { TextScreen } from "../../../components/TextScreen";
import { useCallback, useEffect, useState } from "react";
import { QuestionDocument } from "../../../appwrite/types";
import { appwriteDb } from "../../../appwrite/database";
import { usePlayOnSonos } from "../../../hooks/sonos";

export function Assignment2() {
  const [loading, setLoading] = useState(true);
  const [questionDocuments, setQuestionDocuments] = useState<
    QuestionDocument[] | null
  >(null);

  const listQuestionDocuments = useCallback(() => {
    setLoading(true);

    appwriteDb.questions
      .list()
      .then((response) => {
        setQuestionDocuments(response.documents as QuestionDocument[]);
      })
      .finally(() => {
        setLoading(false);
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
      usePlayOnSonos("/assets/guest-lecture/fx/doorbell.mp3");
    }, ".documents");

    return () => unsubscribe();
  }, []);

  return (
    <TextScreen h1="De opdracht 2 / 2">
      <Typography variant="h2">
        Stuur je vraag in! <QuestionAnswer />
        <Stack alignItems="center" gap={2}>
          <CircularProgress />

          <Stack direction="row" gap={2} flexWrap="wrap">
            {questionDocuments?.map((questionDocument) => {
              return (
                <Card>
                  <CardContent>{questionDocument.student ?? "..."}</CardContent>
                </Card>
              );
            })}
          </Stack>
        </Stack>
      </Typography>
    </TextScreen>
  );
}
