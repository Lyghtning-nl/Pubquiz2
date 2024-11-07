import {
  IonCheckbox,
  IonContent,
  IonFab,
  IonFabButton,
  IonHeader,
  IonIcon,
  IonItem,
  IonList,
  IonNote,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/react";
import "./Home.css";

import { Client } from "appwrite";

import { add } from "ionicons/icons";
import { useEffect } from "react";

const Home: React.FC = () => {
  const client = new Client();

  client
    .setEndpoint("http://192.168.2.15/v1")
    .setProject("672a75920004dd1982c6");

  useEffect(() => {
    // Subscribe to files channel
    const unsubscribe = client.subscribe("files", (response) => {
      if (response.events.includes("buckets.*.files.*.create")) {
        // Log when a new file is uploaded
        console.log(response.payload);
      }
    });

    return () => unsubscribe();
  }, [client]);

  return (
    <IonPage>
      <IonHeader>
        <IonToolbar>
          <IonTitle>Blank</IonTitle>
        </IonToolbar>
      </IonHeader>
      <IonContent fullscreen>
        <IonFab vertical="bottom" horizontal="end" slot="fixed">
          <IonFabButton>
            <IonIcon icon={add} />
          </IonFabButton>
        </IonFab>
      </IonContent>
    </IonPage>
  );
};

export default Home;
