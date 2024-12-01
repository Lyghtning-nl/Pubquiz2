import {
  Avatar,
  Badge,
  Chip,
  List,
  ListItem,
  ListItemAvatar,
  ListItemText,
  Typography,
} from "@mui/material";
import { Lightbulb, MusicNote, Settings, Web } from "@mui/icons-material";
import { TextScreen } from "../../../components/TextScreen";
import { useBlinkOnHue } from "../../../hooks/hue";
import { usePlayOnSonos } from "../../../hooks/sonos";

export function Today() {
  return (
    <TextScreen h1="Waar gaan we het deze les over hebben?">
      <Typography variant="h2">
        PubQuiz 2.0 🪩 <Chip label="Where Tech meets Trivia" />
      </Typography>
      <Typography variant="h3">
        Een interactief Pubquiz systeem, gebouwd met:
      </Typography>
      <Typography variant="h3">
        <List>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <Web />
              </Avatar>
            </ListItemAvatar>
            <ListItemText
              primary="React / Ionic"
              secondary="De frontend van de (web)applicatie"
            />
          </ListItem>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <Settings />
              </Avatar>
            </ListItemAvatar>
            <ListItemText
              primary="Appwrite"
              secondary="Het hart van de applicatie voor realtimefunctionaliteit en data opslag"
            />
          </ListItem>
          <ListItem>
            <ListItemAvatar onClick={() => useBlinkOnHue()}>
              <Avatar>
                <Lightbulb />
              </Avatar>
            </ListItemAvatar>
            <ListItemText primary="Philips Hue" secondary="Lichteffecten" />
          </ListItem>
          <ListItem>
            <ListItemAvatar
              onClick={() => usePlayOnSonos("/assets/fx/correct.mp3")}
            >
              <Avatar>
                <MusicNote />
              </Avatar>
            </ListItemAvatar>
            <ListItemText primary="Sonos" secondary="Geluidseffecten" />
          </ListItem>
        </List>
      </Typography>
    </TextScreen>
  );
}
