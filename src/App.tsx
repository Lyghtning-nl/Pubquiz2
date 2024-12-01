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

import EnterGame from "./pages/EnterGame";

import Sonos from "./pages/Sonos";
import { useEffect } from "react";
import { StatusBar } from "@capacitor/status-bar";
import { Capacitor } from "@capacitor/core";
import { ContextProviders } from "./ContextProviders";
import Player from "./pages/player/Player";
import Center from "./pages/center/Center";
import Master from "./pages/master/Master";
import Snowfall from "react-snowfall";
import GuestLecture from "./pages/guest-lecture/GuestLecture";
import Hue from "./pages/Hue";
import Assignment from "./pages/guest-lecture/Assignment";

setupIonicReact({
  swipeBackEnabled: false,
});

export default function App() {
  useEffect(() => {
    if (Capacitor.getPlatform() !== "web") {
      const hideStatusBar = async () => {
        await StatusBar.hide();
      };
      hideStatusBar();
    }
  }, []);

  return (
    <IonApp>
      <Snowfall
        snowflakeCount={250}
        speed={[0.5, 0.7]}
        style={{
          position: "fixed",
          width: "100vw",
          height: "100vh",
          zIndex: 2,
          opacity: 0.5,
        }}
      />
      <IonReactRouter>
        <IonRouterOutlet>
          <Route exact path="/">
            <ContextProviders>
              <EnterGame />
            </ContextProviders>
          </Route>
          <Route exact path="/player">
            <ContextProviders>
              <Player />
            </ContextProviders>
          </Route>
          <Route exact path="/center">
            <ContextProviders>
              <Center />
            </ContextProviders>
          </Route>
          <Route exact path="/master">
            <ContextProviders>
              <Master />
            </ContextProviders>
          </Route>
          <Route exact path="/sonos">
            <ContextProviders>
              <Sonos />
            </ContextProviders>
          </Route>
          <Route exact path="/hue">
            <ContextProviders>
              <Hue />
            </ContextProviders>
          </Route>
          <Route exact path="/guest-lecture">
            <ContextProviders>
              <GuestLecture />
            </ContextProviders>
          </Route>
          <Route exact path="/opdracht">
            <ContextProviders>
              <Assignment />
            </ContextProviders>
          </Route>
          <Route>
            <Redirect to="/" />
          </Route>
        </IonRouterOutlet>
      </IonReactRouter>
    </IonApp>
  );
}
