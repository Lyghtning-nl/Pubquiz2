import express, { Application } from "express";
import cors from "cors";
import fs from "fs";
import https from "https";
import appwriteRoutes from "./routes/appwrite"; // Import de routes
import sonosRoutes from "./routes/sonos"; // Import de routes

const app: Application = express();
const port = process.env.PORT || 8000;

// Middleware
app.use(cors());

app.use(express.json());
app.use("/appwrite", appwriteRoutes);
app.use("/sonos", sonosRoutes);

// SSL-opties
const sslOptions = {
  key: fs.readFileSync("../cert.key", "utf8"),
  cert: fs.readFileSync("../cert.crt", "utf8"),
};

// HTTPS server starten
https.createServer(sslOptions, app).listen(port, () => {
  console.log(`Express is running securely at https://localhost:${port}`);
});
