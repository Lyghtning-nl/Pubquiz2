import React, { useState, useEffect } from "react";
import { ExtendedSonosDevice } from "../../express-backend/routes/sonos";
import config from "../../config.json";

export function ListAllSonosDevices() {
  const [devices, setDevices] = useState<ExtendedSonosDevice[]>([]);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    const fetchDevices = async () => {
      try {
        const response = await fetch(config.expressEndpoint + "sonos/list");
        const data = await response.json();

        setDevices(data.devices);
      } catch (error) {
        console.error("Error fetching /sonos:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchDevices();
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  return (
    <div>
      <h3>Sonos Devices:</h3>
      <ul>
        {devices?.map((device, index) => (
          <li key={index}>
            {device.d.name} - {device.d.host} - {device.options.LEDState} -{" "}
            {device.d.uuid} - {device.d.groupName}
          </li>
        ))}
      </ul>
    </div>
  );
}
