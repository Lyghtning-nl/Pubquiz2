import { Client, Databases, Storage } from "appwrite";

export const DATABASE_ID = "pubquiz";
export const GAMES_COLLECTION = "games";
export const TEAMS_COLLECTION = "teams";
export const REALTIME_DATA_COLLECTION = "realtime_data";
export const ANSWERS_COLLECTION = "answers";
export const CLIENT_DEVICES_COLLECTION = "client_devices";

const client = new Client();

client
  .setEndpoint("https://192.168.2.15:4200/v1")
  .setProject("672a75920004dd1982c6");

export const appwrite = {
  client,
  databases: new Databases(client),
  storage: new Storage(client),
};
