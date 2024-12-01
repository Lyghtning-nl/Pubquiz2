import { useRealtimeDataContext } from "../context/RealtimeDataContext";
import { questionData, questionDataMergedTyped } from "../questionData";

export function useCurrentQuestion() {
  const { realtimeData, loading } = useRealtimeDataContext();

  if (loading || !realtimeData) return { currentQuestion: null, round: null };

  const currentQuestionId = realtimeData.question_id;

  const currentQuestion = questionDataMergedTyped[currentQuestionId];

  const round = findRoundForQuestion(currentQuestionId);

  return { currentQuestion, round, currentQuestionId };
}

export function findRoundForQuestion(questionId: string) {
  for (let roundIndex = 0; roundIndex < questionData.length; roundIndex++) {
    const round = questionData[roundIndex];

    if (round.questions.hasOwnProperty(questionId)) {
      return roundIndex;
    }
  }
  return 0;
}
