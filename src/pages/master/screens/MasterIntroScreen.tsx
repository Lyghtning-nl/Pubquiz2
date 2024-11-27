import { Button, Typography } from "@mui/material";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";
import { TextScreen } from "../../../components/TextScreen";
import { useUpdateRealtimeData } from "../../../hooks/useUpdateRealtimeData";

export function MasterIntroScreen() {
  const { setRealtimeData, realtimeData } = useRealtimeDataContext();
  const update = useUpdateRealtimeData();

  const enterArena = () => {
    update("screen", "arena");
  };

  return (
    <TextScreen h1="Intro" h3="Een kleine uitleg over het spel 👨‍🏫">
      <Typography variant="body1">
        Voor jou als QuizMaster is er weinig uitleg nodig. Je hoeft alleen
        antwoorden goed te keuren! Check bij de spelers of de uitleg duidelijk
        en ga vervolgens de QuizArena binnen!
      </Typography>

      <Button onClick={() => enterArena()} variant="contained">
        Open de QuizArena ⚔️
      </Button>
    </TextScreen>
  );
}
