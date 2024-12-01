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
