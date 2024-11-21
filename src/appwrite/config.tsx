import { Client, Databases } from "appwrite";
import config from "./config.json";

export const ENDPOINT = config.endpoint;
export const PROJECT_ID = config.projectId;
const DATABASE_ID = config.databaseId;
const COLLECTION_ID_GAMES = "games";
const COLLECTION_ID_ANSWERS = "answers";
const COLLECTION_ID_TEAMS = "teams";
const COLLECTION_ID_REALTIME_DATA = "realtime_data";

const appwriteClient = new Client()
  .setEndpoint(ENDPOINT)
  .setProject(PROJECT_ID);
const appwriteDatabases = new Databases(appwriteClient);

export {
  appwriteClient,
  appwriteDatabases,
  DATABASE_ID,
  COLLECTION_ID_GAMES,
  COLLECTION_ID_ANSWERS,
  COLLECTION_ID_TEAMS,
  COLLECTION_ID_REALTIME_DATA,
};
