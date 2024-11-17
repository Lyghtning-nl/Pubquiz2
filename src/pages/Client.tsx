import {
  IonContent,
  IonHeader,
  IonPage,
  IonTitle,
  IonToolbar,
} from "@ionic/react";

import { useCallback, useEffect, useState } from "react";
import { appwrite, DATABASE_ID, GAMES_COLLECTION } from "../config/appwrite";
import { Models } from "appwrite";

export default function Client() {
  const [gamesLoading, setGamesLoading] = useState(true);
  const [games, setGames] = useState<Models.Document[]>([]);

  const getGames = useCallback(() => {
    const games = appwrite.databases
      .listDocuments(DATABASE_ID, GAMES_COLLECTION)
      .then((response) => {
        setGames(response.documents);
        setGamesLoading(false);
      });
  }, []);

  useEffect(() => {
    getGames();

    const unsubscribe = appwrite.client.subscribe(
      `databases.${DATABASE_ID}.collections.${GAMES_COLLECTION}.documents`,
      (response) => {
        // Callback will be executed on changes for all files.
        getGames();
      }
    );
    // Closes the subscription.
    return () => unsubscribe();
  }, [appwrite]);

  return (
    <IonPage>
      <IonContent fullscreen>
        {gamesLoading && <>Laden...</>}
        {!gamesLoading && (
          <>
            Games:
            {games.map((game) => (
              <div key={game.$id}>{game.name}</div>
            ))}
          </>
        )}
      </IonContent>
    </IonPage>
  );
}
