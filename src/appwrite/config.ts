import { Account, Client, Databases, Teams } from "appwrite";
import config from "../../config.json";

export const ENDPOINT = config.appwrite.endpoint;
export const PROJECT_ID = config.appwrite.projectId;
const DATABASE_ID = config.appwrite.databaseId;
const COLLECTION_ID_GAMES = "games";
const COLLECTION_ID_ANSWERS = "answers";
const COLLECTION_ID_REALTIME_DATA = "realtime_data";

const appwriteClient = new Client()
  .setEndpoint(ENDPOINT)
  .setProject(PROJECT_ID);
const appwriteDatabases = new Databases(appwriteClient);
const appwriteAccount = new Account(appwriteClient);
const appwriteTeams = new Teams(appwriteClient);

export {
  appwriteClient,
  appwriteDatabases,
  appwriteAccount,
  appwriteTeams,
  DATABASE_ID,
  COLLECTION_ID_GAMES,
  COLLECTION_ID_ANSWERS,
  COLLECTION_ID_REALTIME_DATA,
};
