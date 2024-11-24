import { Redirect, Route } from "react-router-dom";
import { IonApp, IonRouterOutlet, setupIonicReact } from "@ionic/react";
import { IonReactRouter } from "@ionic/react-router";

/* Core CSS required for Ionic components to work properly */
import "@ionic/react/css/core.css";

/* Basic CSS for apps built with Ionic */
import "@ionic/react/css/normalize.css";
import "@ionic/react/css/structure.css";
import "@ionic/react/css/typography.css";

/* Optional CSS utils that can be commented out */
import "@ionic/react/css/padding.css";
import "@ionic/react/css/float-elements.css";
import "@ionic/react/css/text-alignment.css";
import "@ionic/react/css/text-transformation.css";
import "@ionic/react/css/flex-utils.css";
import "@ionic/react/css/display.css";

/**
 * Ionic Dark Mode
 * -----------------------------------------------------
 * For more info, please see:
 * https://ionicframework.com/docs/theming/dark-mode
 */

/* import '@ionic/react/css/palettes/dark.always.css'; */
/* import '@ionic/react/css/palettes/dark.class.css'; */
// import "@ionic/react/css/palettes/dark.system.css";

/* Theme variables */
import "./theme/variables.css";

import { GameContextProvider } from "./context/GameContext";
import ScreenProvider from "./components/ScreenProvider";
import EnterGame from "./pages/EnterGame";
import { RealtimeDataContextProvider } from "./context/RealtimeDataContext";
import { AppwriteUserContextProvider } from "./context/AppwriteUserContext";
import { Container } from "@mui/material";
import Sonos from "./pages/Sonos";

setupIonicReact();

export default function App() {
  return (
    <GameContextProvider>
      <AppwriteUserContextProvider>
        <RealtimeDataContextProvider>
          <IonApp>
            <IonReactRouter>
              <IonRouterOutlet>
                <Route exact path="/">
                  <EnterGame />
                </Route>
                <Route exact path="/player">
                  <ScreenProvider userType="player" />
                </Route>
                <Route exact path="/center">
                  <ScreenProvider userType="center" />
                </Route>
                <Route exact path="/master">
                  <ScreenProvider userType="master" />
                </Route>
                <Route exact path="/sonos">
                  <Sonos />
                </Route>
                <Route>
                  <Redirect to="/" />
                </Route>
              </IonRouterOutlet>
            </IonReactRouter>
          </IonApp>
        </RealtimeDataContextProvider>
      </AppwriteUserContextProvider>
    </GameContextProvider>
  );
}
