import { IonContent, IonPage } from "@ionic/react";
import config from "../../config.json";
import { ListAllSonosDevices } from "../components/ListAllSonosDevices";
import { Button } from "@mui/material";
import { ENDPOINT } from "../appwrite/config";

export default function Sonos() {
  const playSound = (uri: string) => {
    fetch(config.expressEndpoint + "sonos/play", {
      method: "POST",
      headers: {
        "Content-Type": "application/json", // Zorg ervoor dat de Content-Type wordt ingesteld
      },
      body: JSON.stringify({
        trackUri: uri,
      }),
    })
      .then((response: Response) => response.json())
      .then((data) => {
        console.log(data);
      })
      .catch((error) => {
        console.error("Error fetching /sonos/play:", error);
      });
  };

  return (
    <IonPage>
      <IonContent fullscreen>
        <ListAllSonosDevices />

        <Button
          variant="contained"
          onClick={() =>
            playSound(
              "https://192.168.2.15:4200/v1/storage/buckets/audio/files/672a863500205199d4e6/view?project=672a75920004dd1982c6&project=672a75920004dd1982c6&mode=admin"
            )
          }
        >
          Play{" "}
        </Button>
      </IonContent>
    </IonPage>
  );
}
