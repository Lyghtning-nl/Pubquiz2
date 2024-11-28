import { Box, Stack } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";
import { UserCardList } from "../../../components/player/UserCardList";

export function GenericSummaryScreen() {
  return (
    <Stack sx={{ height: "100%" }}>
      <TextScreen h1="Scorebord 🏆">
        <Box sx={{ mt: 2 }}>
          <UserCardList stackDirection="column" showScore />
        </Box>
      </TextScreen>
    </Stack>
  );
}
