import express, { Express, Request, Response, Application } from "express";
import cors from "cors";

const app: Application = express();
const port = process.env.PORT || 8000;

app.use(cors());

app.get("/", (req: Request, res: Response) => {
  res.json({ message: "Pong from the Express server!" });
});

app.listen(port, () => {
  console.log(`Express: http://localhost:${port}`);
});
