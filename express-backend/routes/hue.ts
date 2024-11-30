import { Router, Request, Response } from "express";
import express from "express";
import { v3 } from "node-hue-api";

const BRIDGE_USER = "w6Mjagt7Ily5S4O0dOf3Q3WuGRhP-zIx-acsprlc";
// const BRIDGE_CLIENT_KEY = "FCCE173D561457937EC99402064F06ED";
const BRIDGE_IP = "192.168.2.3";

export async function getBridgeConnection() {
  return v3.api.createLocal(BRIDGE_IP).connect(BRIDGE_USER);
}

const router = Router();
const app = express();

router.post("/flash", async (req: Request, res: Response) => {
  const bridge = await getBridgeConnection();
  const GroupLightState = v3.lightStates.GroupLightState;

  async function blinkLight() {
    try {
      await bridge.groups.setGroupState(83, new GroupLightState().alertShort());
    } catch (err) {
      console.error("Error:", err);
    }
  }

  blinkLight().catch((err) => console.error("Error:", err));

  res.status(200).json({
    success: true,
  });
});

router.post("/bpm", async (req: Request, res: Response) => {
  const bridge = await getBridgeConnection();
  const GroupLightState = v3.lightStates.GroupLightState;

  const bpm = 40;
  const interval = 120000 / bpm;

  async function blinkLight() {
    setInterval(async () => {
      try {
        await bridge.groups.setGroupState(83, new GroupLightState().on());

        await bridge.groups.setGroupState(83, new GroupLightState().off());
      } catch (err) {
        console.error("Error:", err);
      }
    }, interval);
  }

  blinkLight().catch((err) => console.error("Error:", err));

  res.status(200).json({
    success: true,
  });
});

export default router;
