import { CircularProgress, LinearProgress } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { useAppwriteUserContext } from "../../../context/AppwriteUserContext";

export function PlayerIndexScreen() {
  const { user, loading } = useAppwriteUserContext();

  if (loading) return <LinearProgress />;

  return (
    <TextScreen
      h1={`Hé ${user?.name}!`}
      h3="Een momentje geduld. <br/><br/>De QuizMaster start het spel zodra alle spelers ingelogd zijn."
    >
      <CircularProgress />
    </TextScreen>
  );
}
