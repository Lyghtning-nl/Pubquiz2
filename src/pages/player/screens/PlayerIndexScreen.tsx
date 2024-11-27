import { CircularProgress, LinearProgress } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { useAppwriteUserContext } from "../../../context/AppwriteUserContext";
import { SetDisplayName } from "../../../components/player/SetDisplayName";

export function PlayerIndexScreen() {
  const { user, loading } = useAppwriteUserContext();

  if (loading) return <LinearProgress />;
  if (user?.name === "") return <SetDisplayName />;

  return (
    <TextScreen
      h1={`Hé ${user?.name}!`}
      h3="Een momentje geduld. <br/><br/>De QuizMaster start het spel zodra alle spelers ingelogd zijn."
    >
      <CircularProgress />
    </TextScreen>
  );
}
