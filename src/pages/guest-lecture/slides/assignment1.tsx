import {
  Avatar,
  List,
  ListItem,
  ListItemAvatar,
  ListItemText,
  Typography,
} from "@mui/material";
import {
  DataArray,
  InstallDesktop,
  QuestionAnswer,
  Web,
} from "@mui/icons-material";
import { TextScreen } from "../../../components/TextScreen";

export function Assignment1() {
  return (
    <TextScreen h1="De opdracht 1 / 2">
      <Typography variant="h2">
        Installer de Pubquiz 2 applicatie <InstallDesktop />
      </Typography>

      <Typography variant="h3">
        <List>
          <ListItem>
            <ListItemAvatar>
              <Avatar>1</Avatar>
            </ListItemAvatar>
            <ListItemText
              primary={
                <>
                  <Typography variant="h3">
                    Open de Terminal van je Mac en type
                  </Typography>{" "}
                  <Typography variant="h2">
                    git clone https://github.com/Lyghtning-nl/Pubquiz2.git
                  </Typography>
                </>
              }
            />
          </ListItem>

          <ListItem>
            <ListItemAvatar>
              <Avatar>2</Avatar>
            </ListItemAvatar>
            <ListItemText
              primary={
                <>
                  <Typography variant="h3">
                    Open nu VS Code en open het zojuist gekloonde project
                  </Typography>
                  <Typography variant="h2">
                    File &gt; Open Folder... &gt; Pubquiz2
                  </Typography>
                </>
              }
            />
          </ListItem>

          <ListItem>
            <ListItemAvatar>
              <Avatar>3</Avatar>
            </ListItemAvatar>
            <ListItemText
              primary={
                <>
                  <Typography variant="h3">
                    Open nu de terminal in VS Code (Terminal &gt; New Terminal)
                    en type
                  </Typography>{" "}
                  <Typography variant="h2">npm install </Typography>
                </>
              }
            />
          </ListItem>

          <ListItem>
            <ListItemAvatar>
              <Avatar>4</Avatar>
            </ListItemAvatar>
            <ListItemText
              primary={
                <>
                  <Typography variant="h3">Type nu</Typography>{" "}
                  <Typography variant="h2">npm run dev</Typography>
                </>
              }
            />
          </ListItem>
        </List>
      </Typography>
    </TextScreen>
  );
}
