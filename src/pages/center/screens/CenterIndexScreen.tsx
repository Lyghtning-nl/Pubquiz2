import {
  Alert,
  Box,
  CircularProgress,
  Container,
  Stack,
  Typography,
  useTheme,
} from "@mui/material";
import { useEffect, useState } from "react";
import QRCode from "qrcode";

import { TextScreen } from "../../../components/TextScreen";
import VerticalLinearStepper from "../../../components/VerticalLinearStepper";
import { useGameContext } from "../../../context/GameContext";
import { UserCardList } from "../../../components/player/UserCardList";
import { UserCard } from "../../../components/player/UserCard";

export function CenterIndexScreen() {
  const [playerQrLoading, setPlayerQrLoading] = useState(false);
  const [playerQrDataUrl, setPlayerQrDataUrl] = useState("");

  const [masterQrLoading, setMasterQrLoading] = useState(false);
  const [masterQrDataUrl, setMasterQrDataUrl] = useState("");

  const [activeUserCount, setActiveUserCount] = useState(0);

  const { game } = useGameContext();

  const playerQrCodeUrl = `<XXX>join?roomcode=${game?.code}`;
  const masterQrCodeUrl = `<XXX>join?roomcode=${game?.code}&usertype=master`;

  useEffect(() => {
    QRCode.toDataURL(playerQrCodeUrl, { width: 512 })
      .then((url) => {
        setPlayerQrLoading(false);
        setPlayerQrDataUrl(url);
      })
      .catch((err) => {
        console.error(err);
      });

    QRCode.toDataURL(masterQrCodeUrl, { width: 512 })
      .then((url) => {
        setMasterQrLoading(false);
        setMasterQrDataUrl(url);
      })
      .catch((err) => {
        console.error(err);
      });
  }, [masterQrCodeUrl, playerQrCodeUrl]);

  const theme = useTheme();

  return (
    <TextScreen
      h1={`Welkom in kamer <u>${game?.code}</u>!`}
      h3="Laten we deze kamer eerst eens even opstarten ⚙️"
    >
      {playerQrLoading ? (
        <CircularProgress />
      ) : (
        <>
          <Container maxWidth="xl">
            <VerticalLinearStepper
              steps={[
                {
                  label: "Wie wordt de QuizMaster?",
                  description: `Een quiz zonder QuizMaster is als een pizzabezorger zonder pizza. 🍕 Je hebt er weinig aan. <br/> De QuizMaster zit achter de knoppen, controleert de antwoorden en entertaint natuurlijk de spelers! <br/> En wij garanderen; de QuizMaster heeft net zoveel lol als de spelers!`,
                  content: (
                    <Stack alignItems="center" gap={2}>
                      <Alert severity="info">
                        <Typography variant="h3">
                          Uitgeruzied? Dan mag de uitverkorene hieronder de
                          QR-code scannen.
                        </Typography>
                      </Alert>
                      <img
                        src={masterQrDataUrl}
                        width={350}
                        height={350}
                        style={{
                          borderRadius: theme.shape.borderRadius,
                          boxShadow: theme.shadows[1],
                        }}
                      />

                      <Typography
                        variant="overline"
                        sx={{ textTransform: "none" }}
                      >
                        {masterQrCodeUrl}
                      </Typography>
                    </Stack>
                  ),
                },
                {
                  label: "Alle spelers verzamelen!",
                  description:
                    "Zonder spelers is er weinig aan. Maak groepjes, of laat ieder voor zich spelen. Dat is aan jullie.",
                  content: (
                    <Stack
                      direction="row"
                      justifyContent="space-around"
                      sx={{
                        width: "100%",
                        "> *": {
                          flexBasis: "50%",
                        },
                      }}
                    >
                      <Stack alignItems="center" gap={2}>
                        <Alert severity="info">
                          <Typography variant="h3">
                            Scan per groep of persoon met één apparaat de
                            QR-code
                          </Typography>
                        </Alert>

                        <img
                          src={playerQrDataUrl}
                          width={350}
                          height={350}
                          style={{
                            borderRadius: theme.shape.borderRadius,
                            boxShadow: theme.shadows[1],
                          }}
                        />

                        <Typography
                          variant="overline"
                          sx={{ textTransform: "none" }}
                        >
                          {playerQrCodeUrl}
                        </Typography>
                      </Stack>

                      <Stack alignItems="center" justifyContent="center">
                        <Typography variant="h3">
                          {activeUserCount > 0
                            ? `Een warm welkom voor...`
                            : `Wachten op spelers...`}
                        </Typography>

                        <Box sx={{ my: 2 }}>
                          <UserCardList
                            stackDirection="row"
                            reportActiveUserCountMethod={setActiveUserCount}
                          />
                        </Box>

                        {activeUserCount > 0 && (
                          <>
                            <Typography variant="body2" sx={{ mb: 2 }}>
                              Wachten op meer spelers...
                            </Typography>
                          </>
                        )}

                        <CircularProgress />
                      </Stack>
                    </Stack>
                  ),
                },
                {
                  label: "Alle spelers ingelogd?",
                  description:
                    "Top! QuizMaster, aan jou de eer om het spel te starten! 🚀 Op jouw apparaat vind je de vervolginstructies.",
                  prevButtonText: "Toch niet compleet? Terugkeren",
                  content: (
                    <Stack
                      alignItems="center"
                      justifyContent="center"
                      direction="column"
                    >
                      <Typography variant="h4">
                        {activeUserCount} spelers
                      </Typography>

                      <UserCardList />
                    </Stack>
                  ),
                },
              ]}
            />
          </Container>
        </>
      )}
    </TextScreen>
  );
}
