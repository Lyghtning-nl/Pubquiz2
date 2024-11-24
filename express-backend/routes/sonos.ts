import { Router, Request, Response } from "express";
import { SonosDevice, SonosManager } from "@svrooij/sonos/lib";
import express from "express"; // Zorg ervoor dat express wordt geïmporteerd

const router = Router();
const app = express();

// Middleware om JSON-body te parseren
app.use(express.json()); // Deze regel moet bovenaan je express-server worden toegevoegd

export type ExtendedSonosDevice = {
  d: SonosDevice;
  options: {
    LEDState: string;
  };
};

router.post("/play", async (req: Request, res: Response) => {
  const { trackUri } = req.body;

  try {
    let Roam: SonosDevice | undefined;

    const manager = new SonosManager();

    await manager
      .InitializeWithDiscovery()
      .then(console.log)
      .then(() => {
        Roam = manager.Devices.find(
          (d) => d.uuid === "RINCON_542A1BB8762C01400"
        );
      })
      .catch(console.error);

    if (!Roam) throw new Error();

    await Roam.SetAVTransportURI(trackUri);

    await Roam.SetVolume(50);

    await Roam?.AVTransportService.Play({
      InstanceID: 0,
      Speed: "1",
    });

    res.status(200).json({
      success: true,
    });
  } catch (error) {
    console.error("Error playing track:", error);
    res.status(500).json({
      success: false,
      message: "Failed to play track.",
    });
  }
});

router.get("/list", async (req: Request, res: Response) => {
  const devices: ExtendedSonosDevice[] = [];
  const manager = new SonosManager();

  try {
    await manager.InitializeWithDiscovery(10);

    const devicePromises = manager.Devices.map(async (d) => {
      const ledStateResponse = await d.DevicePropertiesService.GetLEDState();
      const ledState = ledStateResponse.CurrentLEDState;

      return {
        d,
        options: {
          LEDState: ledState, // LED state ophalen
        },
      };
    });

    const resolvedDevices = await Promise.all(devicePromises);
    devices.push(...resolvedDevices);

    res.status(200).json({
      success: true,
      devices,
    });
  } catch (error) {
    console.error("Error fetching Sonos devices:", error);
    res.status(500).json({
      success: false,
      error: "Failed to fetch Sonos devices",
    });
  }
});

export default router;
