const appName = "node-hue-api";
const deviceName = "Macbook Pro Leander";

import { Router, Request, Response } from "express";
import { v3 } from "node-hue-api";

const BRIDGE_USER = "w6Mjagt7Ily5S4O0dOf3Q3WuGRhP-zIx-acsprlc";
// const BRIDGE_CLIENT_KEY = "FCCE173D561457937EC99402064F06ED";
const BRIDGE_IP = "192.168.2.3";

const discovery = v3.discovery;
const hueApi = v3.api;

const router = Router();

export async function getBridgeConnection() {
  return v3.api.createLocal(BRIDGE_IP).connect(BRIDGE_USER);
}

router.get("/list", async (req: Request, res: Response) => {
  const bridge = await getBridgeConnection();

  const allLights = await bridge.lights.getAll();
  const allZones = await bridge.groups.getZones();

  res.status(200).json({
    success: true,
    lights: allLights,
    zones: allZones,
  });
});

router.post("/blink", async (req: Request, res: Response) => {
  const bridge = await getBridgeConnection();
  const LightState = v3.lightStates.LightState;

  const { color } = req.body;

  try {
    const state = new LightState().on().bri(254);

    if (color === "green") {
      state.hue(30000).sat(254);
    } else if (color === "red") {
      state.hue(0).sat(254);
    }

    await bridge.lights.setLightState(28, state);
    await bridge.lights.setLightState(28, new LightState().alertShort());
  } catch (err) {
    console.error("Error:", err);
  }

  res.status(200).json({
    success: true,
  });
});

router.get("/discover", async (req: Request, res: Response) => {
  const discoveryResults = await discovery.nupnpSearch();

  if (discoveryResults.length === 0) {
    res.status(200).json({
      success: false,
    });
  } else {
    const ipAddress = discoveryResults[0].ipaddress;

    // Create an unauthenticated instance of the Hue API so that we can create a new user
    const unauthenticatedApi = await hueApi.createLocal(ipAddress).connect();

    let createdUser;
    try {
      createdUser = await unauthenticatedApi.users.createUser(
        appName,
        deviceName
      );
      console.log(
        "*******************************************************************************\n"
      );
      console.log(
        "User has been created on the Hue Bridge. The following username can be used to\n" +
          "authenticate with the Bridge and provide full local access to the Hue Bridge.\n" +
          "YOU SHOULD TREAT THIS LIKE A PASSWORD\n"
      );
      console.log(`Hue Bridge User: ${createdUser.username}`);
      console.log(`Hue Bridge User Client Key: ${createdUser.clientkey}`);
      console.log(
        "*******************************************************************************\n"
      );

      const authenticatedApi = await hueApi
        .createLocal(ipAddress)
        .connect(createdUser.username);

      const bridgeConfig =
        await authenticatedApi.configuration.getConfiguration();
      console.log(
        `Connected to Hue Bridge: ${bridgeConfig.name} :: ${bridgeConfig.ipaddress}`
      );
    } catch (err: any) {
      if (err.getHueErrorType() === 101) {
        console.error(
          "The Link button on the bridge was not pressed. Please press the Link button and try again."
        );
      } else {
        console.error(`Unexpected Error: ${err.message}`);
      }
    }
  }
});

export default router;
