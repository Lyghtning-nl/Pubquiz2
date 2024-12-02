import { Alert, Button, TextField } from "@mui/material";
import { TextScreen } from "../../components/TextScreen";
import { appwriteDb } from "../../appwrite/database";
import { Send } from "@mui/icons-material";
import { useState } from "react";
import { QuestionDataOptions } from "../../questionData";

export default function Assignment() {
  /*


  */
  const questionData: QuestionDataOptions = {};
  /*
  


















  Onderstaande code laten staan!
  
  */

  const [student, setStudent] = useState("");
  const [error, setError] = useState("");

  const handleSubmit = () => {
    let error: string = "";

    if (
      questionData.hasOwnProperty("type") &&
      !questionData.hasOwnProperty("options")
    ) {
      error = "Er ontbreekt een veld in je vraag";
      setError(error);
    }

    if (!questionData.text || !questionData.correct) {
      error = "Er ontbreekt een veld in je vraag";
      setError(error);
    }

    if (error === "") {
      appwriteDb.questions.create({
        data: JSON.stringify(questionData),
        student,
      });
    }
  };

  return (
    <TextScreen
      h1="Bouw je eigen vraag! 🎉"
      h2="Open src/pages/guest-lecture/Assignment.tsx"
    >
      <TextField
        label="Wat is je naam?"
        value={student}
        size="medium"
        onChange={(e) => setStudent(e.target.value)}
      />
      <Button
        variant="contained"
        onClick={handleSubmit}
        endIcon={<Send />}
        disabled={student.length < 2}
      >
        Inzenden
      </Button>

      {error && <Alert severity="error">{error}</Alert>}
    </TextScreen>
  );
}
