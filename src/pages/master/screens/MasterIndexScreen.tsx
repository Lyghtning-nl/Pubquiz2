import { Button, CircularProgress, Divider, Typography } from "@mui/material";
import { useState } from "react";
import { TextScreen } from "../../../components/TextScreen";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";
import { UserCardList } from "../../../components/player/UserCardList";
import { useUpdateRealtimeData } from "../../../hooks/useUpdateRealtimeData";

export function MasterIndexScreen() {
  const { setRealtimeData, realtimeData } = useRealtimeDataContext();
  const [activeUserCount, setActiveUserCount] = useState(0);
  const update = useUpdateRealtimeData();

  const startGame = () => {
    update("screen", "intro");
  };

  return (
    <TextScreen h1="QuizMaster" h3="Zo. Dus jij bent de QuizMaster? 👋">
      {activeUserCount > 1 && (
        <Typography variant="body1">
          Dit is het zooitje ongeregeld waarmee jij het spel kunt gaan starten
          👇
        </Typography>
      )}

      {activeUserCount == 0 && (
        <>
          <Typography variant="h3">Wachten op spelers</Typography>
          <CircularProgress />
        </>
      )}

      <UserCardList
        stackDirection="row"
        reportActiveUserCountMethod={setActiveUserCount}
      />

      <Divider sx={{ width: "100%" }} />

      <Button
        onClick={() => startGame()}
        variant="contained"
        disabled={activeUserCount === 0}
      >
        Spel starten! 🚀
      </Button>
    </TextScreen>
  );
}
