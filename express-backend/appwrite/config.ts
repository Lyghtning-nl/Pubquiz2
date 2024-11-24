import { Account, Client, Databases, Teams, Users } from "node-appwrite";
import config from "../../config.json";

export const ENDPOINT = config.appwrite.endpoint;
export const PROJECT_ID = config.appwrite.projectId;

const appwriteClient = new Client()
  .setEndpoint(ENDPOINT)
  .setProject(PROJECT_ID)
  .setKey(
    "standard_eda1ab52cd92332c6b7132f8ab78d1b976db4863c9e220d2a3f6d1f22ed94597bea4a211f524b8b2e89c9fb26bb3ca8306ed0a09c4631409fa376bfa9000f6b8be35f3d75931b23981a93d11879b6215fd5c4aae64b9db9a1e5265cafa11c035d3116d5b684fea49d9a6858c061c6e1614098c3513b85052ccef0f4c7d91f2c3"
  )
  .setSelfSigned(true);
const appwriteDatabases = new Databases(appwriteClient);
const appwriteUsers = new Users(appwriteClient);
const appwriteTeams = new Teams(appwriteClient);

export { appwriteClient, appwriteDatabases, appwriteUsers, appwriteTeams };
