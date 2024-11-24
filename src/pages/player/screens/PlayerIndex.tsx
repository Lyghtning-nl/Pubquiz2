import { CircularProgress } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { useAppwriteUserContext } from "../../../context/AppwriteUserContext";

export function PlayerIndex() {
  const { user } = useAppwriteUserContext();

  return (
    <TextScreen
      h1={`Hoi ${user?.name}`}
      h3="Een momentje geduld. <br/><br/>De QuizMaster start het spel zodra alle spelers ingelogd zijn."
    >
      <CircularProgress />
    </TextScreen>
  );
}
