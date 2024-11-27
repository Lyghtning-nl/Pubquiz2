import {
  Alert,
  Box,
  CircularProgress,
  Container,
  Stack,
  Typography,
} from "@mui/material";
import { useContext, useEffect, useState } from "react";
// import QRCode from "qrcode";
// import Image from "next/image";
import { TextScreen } from "../../../components/TextScreen";
import VerticalLinearStepper from "../../../components/VerticalLinearStepper";
import { useGameContext } from "../../../context/GameContext";
import { UserCardList } from "../../../components/player/UserCardList";
import { UserCard } from "../../../components/player/UserCard";
// import { PAGES_URL_DIRECTORY, applicationConfig } from "@/app/config";
// import { ActiveUsersInRoom } from "@/app/components/User/ActiveUsersInRoom";

export function CenterIndexScreen() {
  const [playerQrLoading, setPlayerQrLoading] = useState(false);
  // const [playerQrDataUrl, setPlayerQrDataUrl] = useState("");

  const [masterQrLoading, setMasterQrLoading] = useState(false);
  // const [masterQrDataUrl, setMasterQrDataUrl] = useState("");

  const [activeUserCount, setActiveUserCount] = useState(0);

  const { game } = useGameContext();

  // const playerQrCodeUrl = `${applicationConfig.vercelDeploymentDomain}${PAGES_URL_DIRECTORY}join?roomcode=${useRoomContext?.room.code}`;
  // const masterQrCodeUrl = `${applicationConfig.vercelDeploymentDomain}${PAGES_URL_DIRECTORY}join?roomcode=${useRoomContext?.room.code}&usertype=master`;

  // useEffect(() => {
  //   QRCode.toDataURL(playerQrCodeUrl, { width: 512 })
  //     .then((url) => {
  //       setPlayerQrLoading(false);
  //       setPlayerQrDataUrl(url);
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //     });

  //   QRCode.toDataURL(masterQrCodeUrl, { width: 512 })
  //     .then((url) => {
  //       setMasterQrLoading(false);
  //       setMasterQrDataUrl(url);
  //     })
  //     .catch((err) => {
  //       console.error(err);
  //     });
  // }, [useRoomContext, masterQrCodeUrl, playerQrCodeUrl]);

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
                    <Stack alignItems="center">
                      <Alert severity="info">
                        <Typography variant="h3">
                          Uitgeruzied? Dan mag de uitverkorene hieronder de
                          QR-code scannen.
                        </Typography>
                      </Alert>
                      {/* <Image
                        src={masterQrDataUrl}
                        alt="QR Code for room"
                        width={350}
                        height={350}
                      /> */}

                      <Typography
                        variant="overline"
                        sx={{ textTransform: "none" }}
                      >
                        {/* {masterQrCodeUrl} */}
                      </Typography>
                    </Stack>
                  ),
                },
                {
                  label: "Alle spelers verzamelen!",
                  description:
                    "Zonder spelers is er weinig aan. Maak groepjes, of laat ieder voor zich spelen. 🤷‍♂️ / 👨‍👦‍👦 Dat is aan jullie.",
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
                      <Stack alignItems="center">
                        <Alert severity="info">
                          <Typography variant="h3">
                            Scan per groep of persoon met één apparaat de
                            QR-code
                          </Typography>
                        </Alert>

                        {/* <Image
                          src={playerQrDataUrl}
                          alt="QR Code for room"
                          width={350}
                          height={350}
                        /> */}

                        <Typography
                          variant="overline"
                          sx={{ textTransform: "none" }}
                        >
                          {/* {playerQrCodeUrl} */} QR Code goes here...
                        </Typography>
                      </Stack>

                      <Stack alignItems="center" justifyContent="center">
                        <Typography variant="h3">
                          {activeUserCount > 0
                            ? `Een warm welkom voor...`
                            : `Wachten op spelers...`}
                        </Typography>

                        <Box sx={{ my: 2 }}>
                          {/* <ActiveUsersInRoom
                            reportActiveUserCountMethod={setActiveUserCount}
                          /> */}
                          <UserCardList />
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
