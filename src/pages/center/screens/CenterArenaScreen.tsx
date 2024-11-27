import { Box, Divider, Stack } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { SoundBeat } from "../../../components/lottie/SoundBeat";
import { UserCardList } from "../../../components/player/UserCardList";
import { roundTitles } from "../../../questionData";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";

export function CenterArenaScreen() {
  const currentQuestion = useCurrentQuestion();
  const { realtimeData } = useRealtimeDataContext();

  return (
    <Stack sx={{ height: "100%" }}>
      <TextScreen
        h1={`Ronde ${realtimeData?.round_index} - ${
          roundTitles[currentQuestion.round]
        }`}
        h2={currentQuestion?.text}
      ></TextScreen>

      <Box
        sx={(theme) => ({
          my: "auto",
          py: 2,
          alignSelf: "center",
          "& img": {
            width: "auto",
            height: "40vh",
            borderRadius: theme.shape.borderRadius,
            boxShadow: theme.shadows[15],
          },
        })}
      >
        {currentQuestion.audio && !currentQuestion.image && (
          <SoundBeat width={800} />
        )}
        {currentQuestion?.image && <img src={currentQuestion.image} alt="" />}
      </Box>

      <Divider />

      <Box
        sx={{
          marginTop: "auto",
          paddingTop: "15px",

          "& .MuiCard-root": {
            flexBasis: `calc(25% - 12px)`,
            width: `calc(25% - 12px)`,
          },
        }}
      >
        <UserCardList stackDirection="row" showScore />
        {/* <ActiveUsersInRoom stackDirection="row" showScore /> */}
      </Box>
    </Stack>
  );
}
