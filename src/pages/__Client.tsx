import { IonContent, IonPage } from "@ionic/react";
import { useCallback, useEffect, useState } from "react";
import { Account, ID, Models, Query } from "appwrite";
import { CanvasInput } from "../components/Canvas";
import { appwriteDb } from "../appwrite/database";
import { useGameContext } from "../context/GameContext";
import { Box } from "@mui/system";
import { Button } from "@mui/material";
import {
  appwriteClient,
  COLLECTION_ID_REALTIME_DATA,
  DATABASE_ID,
} from "../appwrite/config";
import { RealtimeDataDocument } from "../appwrite/types";
import { useAppwriteAccountSession } from "../hooks/AppwriteAccountSession";

export default function __Client() {
  // const { appwriteUser } = useAppwriteAccountSession();
  const gameContext = useGameContext();

  const [realtimeDataLoading, setRealtimeDataLoading] = useState(true);
  const [realtimeData, setRealtimeData] = useState<RealtimeDataDocument[]>([]);

  const getRealtimeData = useCallback(() => {
    appwriteDb.realtime_data.list().then((response) => {
      setRealtimeData(response.documents as RealtimeDataDocument[]);
      setRealtimeDataLoading(false);
    });
  }, []);

  const createAccount = () => {
    const account = new Account(appwriteClient);
    account
      .create(ID.unique(), "dummy@dummy.nl", "securepassword", "Team Naam")
      .then((response) => {
        console.log("Account created successfully:", response);
      })
      .catch((error) => {
        console.error("Error creating account:", error);
      });
  };

  const loginAccount = () => {
    const account = new Account(appwriteClient);
    const promise = account.createEmailPasswordSession(
      "dummy@dummy.nl",
      "securepassword"
    );
    promise.then(
      function (response) {
        console.log(response); // Success
      },
      function (error) {
        console.log(error); // Failure
      }
    );
  };

  const getAccount = () => {
    // console.log(appwriteUser);
  };

  useEffect(() => {
    // getRealtimeData();
    // // const unsubscribeRealtimeData = appwriteDb.realtime_data.subscribe(
    // //   (response) => {
    // //     // getRealtimeData();
    // //     console.log(response);
    // //   },
    // //   ".documents.673f8aa100017a683546"
    // // );
    // const unsub = appwriteClient.subscribe(
    //   `databases.${DATABASE_ID}.collections.${COLLECTION_ID_REALTIME_DATA}.documents`,
    //   (response) => {
    //     console.log(response);
    //   }
    // );
    // return () => {
    //   unsub();
    // };
  }, []);

  return (
    <IonPage>
      <IonContent fullscreen>
        test
        {/* <Box>
          <Button variant="contained" onClick={() => createAccount()}>
            Maak user
          </Button>

          <Button variant="contained" onClick={() => loginAccount()}>
            Login User
          </Button>

          <Button variant="contained" onClick={() => getAccount()}>
            Get User
          </Button>
        </Box>

        <CanvasInput /> */}
        {realtimeDataLoading && <>Laden...</>}
        {!realtimeDataLoading && (
          <>
            Realtimedata:
            {realtimeData.map((data) => (
              <div key={data.$id}>{data.screen}</div>
            ))}
          </>
        )}
      </IonContent>
    </IonPage>
  );
}
