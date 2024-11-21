import { IonContent, IonPage } from "@ionic/react";
import { useCallback, useEffect, useState } from "react";
import { Account, ID, Models, Query } from "appwrite";
import { CanvasInput } from "../components/Canvas";
import { appwriteDb } from "../appwrite/database";
import { useGameContext } from "../context/GameContext";
import { Box } from "@mui/system";
import { Button } from "@mui/material";
import { Send } from "@mui/icons-material";
import { appwriteClient } from "../appwrite/config";
import { RealtimeDataDocument } from "../appwrite/types";
import { useAppwriteAccountSession } from "../hooks/AppwriteAccountSession";

export default function Client() {
  const { appwriteUser } = useAppwriteAccountSession();
  const gameContext = useGameContext();

  const [gamesLoading, setGamesLoading] = useState(true);
  const [realtimeDataLoading, setRealtimeDataLoading] = useState(true);
  const [games, setGames] = useState<Models.Document[]>([]);
  const [realtimeData, setRealtimeData] = useState<RealtimeDataDocument[]>([]);

  const [gameCodeInput, setGamecodeInput] = useState("");

  const getGames = useCallback(() => {
    appwriteDb.games.list().then((response) => {
      setGames(response.documents);
      setGamesLoading(false);

      // console.log(response);
    });
  }, []);

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
    console.log(appwriteUser);
  };

  useEffect(() => {
    appwriteDb.games
      .list([Query.equal("code", "TEST_GAME")])
      .then((response) => {
        console.log(response);
      });

    getGames();
    getRealtimeData();

    if (gameContext?.game.code) setGamecodeInput(gameContext.game.code);

    const unsubscribeGames = appwriteDb.games.subscribe(() => {
      getGames();
    });

    const unsubscribeRealtimeData = appwriteDb.realtime_data.subscribe(() => {
      getRealtimeData();
    });

    return () => {
      unsubscribeGames();
      unsubscribeRealtimeData();
    };
  }, [getGames, getRealtimeData, gameContext]);

  return (
    <IonPage>
      <IonContent fullscreen>
        <Box>
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

        {gamesLoading && <>Laden...</>}
        {!gamesLoading && (
          <>
            Games:
            {games.map((game) => (
              <div key={game.$id}>{game.name}</div>
            ))}
          </>
        )}

        {realtimeDataLoading && <>Laden...</>}
        {!realtimeDataLoading && (
          <>
            Realtimedata:
            {realtimeData.map((data) => (
              <div key={data.$id}>{data.screen}</div>
            ))}
          </>
        )}
        <CanvasInput />
      </IonContent>
    </IonPage>
  );
}
