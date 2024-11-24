import {
  appwriteDatabases,
  DATABASE_ID,
  COLLECTION_ID_GAMES,
  COLLECTION_ID_ANSWERS,
  appwriteClient,
  COLLECTION_ID_REALTIME_DATA,
} from "./config";
import { ID, RealtimeResponseEvent } from "appwrite";
import { Models } from "appwrite";

type CollectionMethods<T extends Models.Document = Models.Document> = {
  list: (queries?: string[]) => Promise<Models.DocumentList<T>>;
  create: (payload: Partial<T>, id?: string) => Promise<T>;
  update: (
    id: string,
    payload?: Partial<Omit<Models.Document, keyof Models.Document>> | undefined
  ) => Promise<T>;
  get: (id: string) => Promise<T>;
  delete: (id: string) => Promise<{}>;
  subscribe: (
    callback: (payload: RealtimeResponseEvent<T>) => void,
    path?: string
  ) => () => void;
};

type Database = {
  [collectionName: string]: CollectionMethods;
};

const collections = [
  {
    databaseId: DATABASE_ID,
    id: COLLECTION_ID_GAMES,
    name: "games",
  },
  {
    databaseId: DATABASE_ID,
    id: COLLECTION_ID_ANSWERS,
    name: "answers",
  },
  {
    databaseId: DATABASE_ID,
    id: COLLECTION_ID_REALTIME_DATA,
    name: "realtime_data",
  },
];

const appwriteDb: Database = {};

collections.forEach((col) => {
  appwriteDb[col.name] = {
    create: (payload, id = ID.unique()) =>
      appwriteDatabases.createDocument(col.databaseId, col.id, id, payload),
    update: (id, payload) =>
      appwriteDatabases.updateDocument(col.databaseId, col.id, id, payload),
    get: (id) => appwriteDatabases.getDocument(col.databaseId, col.id, id),
    list: (queries) =>
      appwriteDatabases.listDocuments(col.databaseId, col.id, queries),
    delete: (id) =>
      appwriteDatabases.deleteDocument(col.databaseId, col.id, id),
    subscribe: (callback: (response: any) => void, path) => {
      return appwriteClient.subscribe(
        `databases.${DATABASE_ID}.collections.${col.id}${path ? path : ""}`,
        callback
      );
    },
  };
});

export { appwriteDb };
