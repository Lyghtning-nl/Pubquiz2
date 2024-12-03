import config from "../../config.json";

export function useBlinkOnHue(color?: "red" | "green") {
  fetch(config.expressEndpoint + "hue/blink", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      color: color,
    }),
  })
    .then((response: Response) => response.json())
    .catch((error) => {
      console.error("Error fetching /hue/blink:", error);
    });
}

export function useStartCountdown(seconds: number) {
  fetch(config.expressEndpoint + "hue/start-countdown", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      seconds,
    }),
  })
    .then((response: Response) => response.json())
    .catch((error) => {
      console.error("Error fetching /hue/start-countdown:", error);
    });
}

export function useBrightenUp() {
  fetch(config.expressEndpoint + "hue/brighten-up", { method: "POST" })
    .then((response: Response) => response.json())
    .catch((error) => {
      console.error("Error fetching /hue/brighten-up:", error);
    });
}
