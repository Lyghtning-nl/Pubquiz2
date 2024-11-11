import {
  IonContent,
  IonHeader,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/react";
import "./Home.css";

import { useEffect } from "react";
import { appwrite } from "../config/appwrite";

const Home: React.FC = () => {
  useEffect(() => {
    // Subscribe to files channel
    appwrite.client.subscribe("files", (response) => {
      if (response.events.includes("buckets.*.files.*.create")) {
        // Log when a new file is uploaded
        console.log(response.payload);
      }
    });
  }, [appwrite]);

  return (
    <IonPage>
      <IonHeader>
        <IonToolbar>
          <IonTitle>Pubquiz 123</IonTitle>
        </IonToolbar>
      </IonHeader>
      <IonContent fullscreen>
        test243
        <audio
          src="https://192.168.2.15:4200/v1/storage/buckets/audio/files/672a863500205199d4e6/view?project=672a75920004dd1982c6&project=672a75920004dd1982c6&mode=admin"
          controls
        />
      </IonContent>
    </IonPage>
  );
};

export default Home;
