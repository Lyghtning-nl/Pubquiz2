import { Box, Stack } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { useAppwriteUserContext } from "../../../context/AppwriteUserContext";
import { useRealtimeDataContext } from "../../../context/RealtimeDataContext";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";
import { SoundBeat } from "../../../components/lottie/SoundBeat";
import { AnswerInput } from "../../../components/player/AnswerInput";

export function PlayerArenaScreen() {
  const currentQuestion = useCurrentQuestion();
  const realtimeDataContext = useRealtimeDataContext();
  const { user } = useAppwriteUserContext();

  return (
    <Stack sx={{ height: "100%" }}>
      <TextScreen
        h1={user?.name ?? "..."}
        h2={currentQuestion?.text}
      ></TextScreen>

      <Box
        sx={(theme) => ({
          zIndex: 1,
          position: "relative",
          py: 2,
          my: "auto",
          alignSelf: "center",
          "& img": {
            maxWidth: "100%",
            height: "auto",
            borderRadius: theme.shape.borderRadius,
            boxShadow: theme.shadows[15],
          },
        })}
      >
        {currentQuestion.audio && !currentQuestion.image && <SoundBeat />}
        {currentQuestion?.image && <img src={currentQuestion.image} alt="" />}
      </Box>

      <Box
        sx={(theme) => ({
          position: "sticky",
          bottom: `calc(${theme.spacings.md} * -1)`,
          margin: `auto calc(${theme.spacings.md} * -1) calc(${theme.spacings.md} * -1)`,
          padding: `${theme.spacings.md}`,
          boxShadow: theme.shadows[4],
          zIndex: 4,
          bgcolor: "background.paper",
        })}
      >
        {realtimeDataContext && <AnswerInput key={realtimeDataContext.realtimeData?.question_id} />}
      </Box>
    </Stack>
  );
}
