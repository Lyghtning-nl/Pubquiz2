import { useState, useEffect } from "react";
import { Account, Models } from "appwrite";
import { appwriteAccount, appwriteClient } from "../appwrite/config";

export function useAppwriteAccountSession() {
  const [appwriteAccountLoading, setAppwriteAccountLoading] = useState(true);
  const [appwriteUser, setAppwriteUser] =
    useState<Models.User<Models.Preferences> | null>(null);
  const [appwriteAccountError, setAppwriteAccountError] = useState<any>(null);

  useEffect(() => {
    const fetchAccount = async () => {
      setAppwriteAccountLoading(true);
      try {
        const response = await appwriteAccount.get();
        setAppwriteUser(response);
        setAppwriteAccountError(null);
      } catch (err) {
        setAppwriteUser(null);
        setAppwriteAccountError(err);
      } finally {
        setAppwriteAccountLoading(false);
      }
    };

    fetchAccount();
  }, []);

  return { appwriteAccountLoading, appwriteUser, appwriteAccountError };
}
