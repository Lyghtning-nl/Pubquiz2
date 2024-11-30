import express, { Application } from "express";
import cors from "cors";
import fs from "fs";
import https from "https";
import http from "http";
import appwriteRoutes from "./routes/appwrite";
import sonosRoutes from "./routes/sonos";
import hueRoutes from "./routes/hue";

const useHttps = true;

const app: Application = express();
const port = process.env.PORT || 8000;

// Middleware
app.use(cors());

app.use(express.json());
app.use("/appwrite", appwriteRoutes);
app.use("/sonos", sonosRoutes);
app.use("/hue", hueRoutes);

if (useHttps) {
  // SSL-opties
  const sslOptions = {
    key: fs.readFileSync("../cert.key", "utf8"),
    cert: fs.readFileSync("../cert.crt", "utf8"),
  };
  // HTTPS server starten
  https.createServer(sslOptions, app).listen(port, () => {
    console.log(`Express is running securely at https://localhost:${port}`);
  });
} else {
  http.createServer(app).listen(port, () => {
    console.log(`Express is running at http://localhost:${port}`);
  });
}
