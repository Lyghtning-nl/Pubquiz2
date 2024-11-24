import { Button, CircularProgress, Divider, Typography } from "@mui/material";
import { useState } from "react";
import { TextScreen } from "../../../components/TextScreen";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";

export function MasterIndex() {
  const { setRealtimeData, realtimeData } = useRealtimeDataContext();
  const [activeUserCount, setActiveUserCount] = useState(0);
  
  const startGame = () => {
    if (realtimeData) {
      setRealtimeData({
        ...realtimeData, // Behoud alle bestaande gegevens
        screen: "arena", // Overschrijft alleen het 'screen' veld
      });
    }
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
      {/* 
      <ActiveUsersInRoom
        stackDirection="row"
        reportActiveUserCountMethod={setActiveUserCount}
      /> */}

      <Divider sx={{ width: "100%" }} />

      <Button
        onClick={() => startGame()}
        variant="contained"
        // disabled={activeUserCount === 0}
      >
        Spel starten! 🚀
      </Button>
    </TextScreen>
  );
}
