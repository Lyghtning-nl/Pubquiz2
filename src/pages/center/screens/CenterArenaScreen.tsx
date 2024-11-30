import { Box, Divider, Stack } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { SoundBeat } from "../../../components/lottie/SoundBeat";
import { UserCardList } from "../../../components/player/UserCardList";
import { useCurrentQuestion } from "../../../hooks/useCurrentQuestion";
import { questionData } from "../../../questionData";

export function CenterArenaScreen() {
  const { currentQuestion, round } = useCurrentQuestion();

  if (!currentQuestion) return null;

  return (
    <Stack sx={{ height: "100%" }}>
      <TextScreen
        h1={`Ronde ${round} - ${questionData[round].title}`}
        h2={currentQuestion.text}
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
      </Box>
    </Stack>
  );
}
