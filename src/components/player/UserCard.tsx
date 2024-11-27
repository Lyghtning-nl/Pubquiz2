import {
  Avatar,
  Card,
  CardContent,
  CardHeader,
  LinearProgress,
  Stack,
  Typography,
} from "@mui/material";
import { red } from "@mui/material/colors";
import { Models } from "appwrite";
import { ReactNode } from "react";

type UserCardProps = {
  showScore?: boolean;
  scoreCount?: number;
  membership: Models.Membership;
};

const getDisplayNameAvatar = (displayName: string) => {
  if (displayName === "" || !displayName) return "";

  let [firstAvatarInitial, secondAvatarInital] = displayName.split(" ");

  secondAvatarInital =
    secondAvatarInital !== undefined
      ? secondAvatarInital.substring(0, 1)
      : firstAvatarInitial.substring(2, 1);

  return firstAvatarInitial.substring(0, 1) + secondAvatarInital;
};

export function UserCard(props: UserCardProps) {
  const { membership, showScore, scoreCount } = props;
  const randomEmojiIndexes = ["🦖", "🐷", "🐛", "🤠", "🔥"];

  const { userName: displayName } = membership;

  return (
    <Card
      variant="elevation"
      sx={{
        overflow: "visible",
      }}
    >
      {displayName !== "" ? (
        <CardHeader
          sx={{ textWrap: "nowrap" }}
          title={<Typography variant="h2">{displayName}</Typography>}
          avatar={
            <Avatar sx={{ bgcolor: red[500], textTransform: "uppercase" }}>
              {getDisplayNameAvatar(displayName)}
            </Avatar>
          }
        />
      ) : (
        <CardHeader
          sx={{ textWrap: "nowrap" }}
          title={<LinearProgress sx={{ my: 1 }} />}
          avatar={
            <Avatar sx={(theme) => ({ bgcolor: theme.palette.secondary.main })}>
              {
                randomEmojiIndexes[
                  Math.floor(Math.random() * randomEmojiIndexes.length)
                ]
              }
            </Avatar>
          }
          subheader="Kiest gebruikersnaam..."
        />
      )}

      {showScore && (
        <CardContent sx={{ py: 0 }}>
          <Stack direction="row" alignItems="center" gap={2}>
            <Typography variant="h1">{scoreCount}</Typography> punten
          </Stack>
        </CardContent>
      )}
    </Card>
  );
}
