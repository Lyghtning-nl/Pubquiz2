import { Typography } from "@mui/material";
import { TextScreen } from "../../../components/TextScreen";

export function GenericIntroScreen() {
  return (
    <TextScreen h1="Intro" h3="Een kleine uitleg over het spel 👨‍🏫">
      <ul>
        <li>
          <Typography variant="body1">
            Per goed antwoord scoor je 10 punten.
          </Typography>
        </li>
        <li>
          <Typography variant="body1">
            Nadat je je antwoord hebt verstuurd kun je niet meer terug!
          </Typography>
        </li>
        <li>
          <Typography variant="body1">
            Als de timer afgelopen is, wordt je antwoord verstuurd in de staat
            zoals deze was tijdens het typen.
          </Typography>
        </li>
        <li>
          <Typography variant="body1">
            Googlen tijdens de vragen is verboden! Je telefoon explodeert
            wanneer je dit probeert. <br />
            Hetzelfde geldt voor Shazam.
          </Typography>
        </li>
        <li>
          <Typography variant="body1">
            Probeer je scherm aan te houden! (Pas desnoods je instellingen even
            tijdelijk aan.)
          </Typography>
        </li>
        <li>
          <Typography variant="body1">Gebruik GEEN icognitomodus!</Typography>
        </li>
      </ul>
    </TextScreen>
  );
}
