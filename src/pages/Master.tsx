import { IonContent, IonPage } from "@ionic/react";

import { useCallback, useEffect, useState } from "react";
import { appwriteDb } from "../appwrite/database";

import { CanvasViewer } from "../components/Canvas";
import { AnswerDocument } from "../appwrite/types";
import { Box } from "@mui/system";
import { IconButton } from "@mui/material";
import { Delete } from "@mui/icons-material";
import { Query } from "appwrite";

const CanvasAnswer = ({ answer }: { answer: AnswerDocument }) => {
  return (
    <Box sx={{ position: "relative" }}>
      <CanvasViewer canvasPath={JSON.parse(answer.content)} />

      <Box sx={{ position: "absolute", top: 5, right: 5 }}>
        <IconButton onClick={() => appwriteDb.answers.delete(answer.$id)}>
          <Delete />
        </IconButton>
      </Box>
    </Box>
  );
};

const KeyboardAnswer = ({ answer }: { answer: AnswerDocument }) => {
  return <>{answer.content}</>;
};

export default function Master() {
  const [answersLoading, setAnswersLoading] = useState(true);
  const [answers, setAnswers] = useState<AnswerDocument[]>([]);

  const getAnswers = useCallback(() => {
    appwriteDb.answers
      .list([Query.limit(100), Query.orderDesc("$id")])
      .then((response) => {
        setAnswers(response.documents as AnswerDocument[]);
        setAnswersLoading(false);
      });
  }, []);

  useEffect(() => {
    getAnswers();

    const unsubscribe = appwriteDb.answers.subscribe((response) => {
      getAnswers();
    }, ".documents");

    return () => unsubscribe();
  }, [getAnswers]);

  return (
    <IonPage>
      <IonContent fullscreen>
        {answersLoading && <>Laden...</>}
        {!answersLoading && (
          <>
            <h2>Answers:</h2>
            {answers.map((answer) => {
              if (answer.input_type === "Canvas")
                return <CanvasAnswer key={answer.$id} answer={answer} />;

              if (answer.input_type === "Keyboard")
                return <KeyboardAnswer key={answer.$id} answer={answer} />;
            })}
          </>
        )}
      </IonContent>
    </IonPage>
  );
}
