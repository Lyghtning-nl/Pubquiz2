import { useRealtimeDataContext } from "../context/RealtimeDataContext";
import { questionDataMergedTyped } from "../questionData";

export function useCurrentQuestion() {
  const { realtimeData } = useRealtimeDataContext();
  const currentQuestionId = realtimeData?.question_id;

  if (currentQuestionId !== undefined) {
    const questionKey = currentQuestionId.toString();
    return questionDataMergedTyped[questionKey];
  }

  return { text: "undefined", round: 0 };
}
