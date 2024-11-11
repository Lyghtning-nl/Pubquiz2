import { Client, Databases, Storage } from "appwrite";
import { useEffect } from "react";

const client = new Client();

client
  .setEndpoint("https://192.168.2.15:4200/v1")
  .setProject("672a75920004dd1982c6");

export const appwrite = {
  client,
  databases: new Databases(client),
  storage: new Storage(client),
};
