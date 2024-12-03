import { IonContent, IonPage } from "@ionic/react";
import config from "../../config.json";
import { Button } from "@mui/material";
import { useState, useEffect } from "react";
import { ExtendedSonosDevice } from "../../express-backend/routes/sonos";
import { usePlayOnSonos } from "../hooks/sonosHooks";

export default function Sonos() {
  const playSound = (uri: string) => {
    usePlayOnSonos(uri);
  };

  return (
    <IonPage>
      <IonContent fullscreen>
        <ListAllSonosDevices />

        <Button
          variant="contained"
          onClick={() => playSound("/assets/question/duaLipa-Houdini.mp3")}
        >
          Play{" "}
        </Button>
      </IonContent>
    </IonPage>
  );
}

function ListAllSonosDevices() {
  const [devices, setDevices] = useState<ExtendedSonosDevice[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchDevices = async () => {
      try {
        const response = await fetch(config.expressEndpoint + "sonos/list");
        const data = await response.json();

        setDevices(data.devices);
      } catch (error) {
        console.error("Error fetching /sonos:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchDevices();
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h3>Sonos Devices:</h3>
      <ul>
        {devices?.map((device, index) => (
          <li key={index}>
            {device.d.name} - {device.d.host} - {device.options.LEDState} -{" "}
            {device.d.uuid} - {device.d.groupName}
          </li>
        ))}
      </ul>
    </div>
  );
}
