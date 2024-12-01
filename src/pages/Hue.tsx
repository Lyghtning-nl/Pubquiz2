import { IonContent, IonPage } from "@ionic/react";
import config from "../../config.json";
import { Button } from "@mui/material";
import { useEffect, useState } from "react";
import { useBlinkOnHue } from "../hooks/hue";

export default function Hue() {
  const blink = (color?: boolean | "red" | "green") => {
    useBlinkOnHue(color);
  };

  return (
    <IonPage>
      <IonContent fullscreen>
        <ListAllHueDevices />

        <Button variant="contained" onClick={() => blink("green")}>
          Blink
        </Button>
      </IonContent>
    </IonPage>
  );
}

function ListAllHueDevices() {
  const [lights, setLights] = useState([]);
  const [zones, setZones] = useState([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchDevices = async () => {
      try {
        const response = await fetch(config.expressEndpoint + "hue/list");
        const data = await response.json();

        setLights(data.lights);
        setZones(data.zones);
      } catch (error) {
        console.error("Error fetching /hue:", error);
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
      <h3>Hue Devices:</h3>
      <div>
        <h3>Hue Lights:</h3>
        <ul>
          {lights.map((light, index) => (
            <li key={index}>
              {light.data.id} | {light.data.name}
            </li>
          ))}
        </ul>

        <h3>Hue Zones:</h3>
        <ul>
          {zones.map((zone, index) => (
            <li key={index}>
              {zone.data.id} | {zone.data.name}
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
