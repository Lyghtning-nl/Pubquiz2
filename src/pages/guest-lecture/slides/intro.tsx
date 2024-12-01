import {
  Avatar,
  Divider,
  LinearProgress,
  List,
  ListItem,
  ListItemAvatar,
  Typography,
} from "@mui/material";
import { Cake, ColorLens, Person, School, Work } from "@mui/icons-material";
import { TextScreen } from "../../../components/TextScreen";

export function Intro() {
  return (
    <TextScreen h1="Gastles 5 december - Grafisch Lyceum Rotterdam">
      <Typography variant="h2">👋 Goedemorgen!</Typography>

      <Typography variant="h2">
        <List>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <Person />
              </Avatar>
            </ListItemAvatar>
            Leander Matse
          </ListItem>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <Cake />
              </Avatar>
            </ListItemAvatar>
            32 jaar
          </ListItem>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <Work />
              </Avatar>
            </ListItemAvatar>
            Software Developer / Marketing manager
          </ListItem>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <School />
              </Avatar>
            </ListItemAvatar>
            Oud student Mediatechnologie GLR (2009 - 2012)
          </ListItem>
          <ListItem>
            <ListItemAvatar>
              <Avatar>
                <ColorLens />
              </Avatar>
            </ListItemAvatar>
            Creatieveling
          </ListItem>
        </List>
      </Typography>
    </TextScreen>
  );
}
