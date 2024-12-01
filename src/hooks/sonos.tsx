import config from "../../config.json";

export function usePlayOnSonos(trackUri: string) {
  fetch(config.expressEndpoint + "sonos/play", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      trackUri: "http://192.168.2.15:5173" + trackUri,
    }),
  });
}

export function useStopOnSonos() {
  fetch(config.expressEndpoint + "sonos/stop", {
    method: "POST",
  });
}
