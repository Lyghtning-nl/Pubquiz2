import { useState } from "react";
import { useAppwriteUserContext } from "../context/AppwriteUserContext";
import {
  CreateAppwriteUserResponse,
  UpdateAppwriteUserNameResponse,
} from "../appwrite/types";
import { appwriteAccount } from "../appwrite/config";
import config from "../../config.json";

export const useCreateAppwriteUserSession = () => {
  const appwriteUser = useAppwriteUserContext();
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState("");
  const [response, setResponse] = useState("");

  const createUserAndSession = async () => {
    try {
      setLoading(true);

      const create = await fetch(
        config.expressEndpoint + "appwrite/user/create",
        {
          method: "POST",
        }
      );

      if (!create.ok) setError("Failed to create user");

      const data: CreateAppwriteUserResponse = await create.json();

      appwriteUser.setUser(data.user);

      await appwriteAccount.createSession(data.user.$id, data.token.secret);

      setResponse(data.message);
    } catch (err) {
      setResponse("Error: Could not connect to the server.");
    } finally {
      setLoading(false);
    }
  };

  return {
    loading,
    response,
    error,
    createUserAndSession,
  };
};

export const useUpdateAppwriteUserName = () => {
  const appwriteUser = useAppwriteUserContext();
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState("");
  const [response, setResponse] = useState("");

  const updateUserName = async (displayName: string) => {
    try {
      setLoading(true);

      const update = await fetch(
        `${config.expressEndpoint}appwrite/user/update/name`,
        {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json", // Zorg ervoor dat de Content-Type wordt ingesteld
          },
          body: JSON.stringify({
            id: appwriteUser.user?.$id,
            name: displayName,
          }),
        }
      );

      if (!update.ok) setError("Failed to update user");

      const data: UpdateAppwriteUserNameResponse = await update.json();

      appwriteUser.setUser(data.user);

      setResponse(data.message);
    } catch (err) {
      setResponse("Error: Could not connect to the server.");
    } finally {
      setLoading(false);
    }
  };

  return {
    loading,
    response,
    error,
    updateUserName,
  };
};