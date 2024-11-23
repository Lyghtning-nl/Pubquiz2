import { Account, ID, Models } from "appwrite";
import {
  createContext,
  ReactNode,
  useContext,
  useEffect,
  useState,
} from "react";
import { appwriteAccount } from "../appwrite/config";

interface AppwriteUserContextProviderProps {
  children: ReactNode;
}

interface AppwriteUserContextProps {
  user: Models.User<Models.Preferences> | null;
  loading: boolean;
}

export const AppwriteUserContext =
  createContext<AppwriteUserContextProps | null>(null);

export function AppwriteUserContextProvider({
  children,
}: AppwriteUserContextProviderProps) {
  const [loading, setLoading] = useState(true);
  const [user, setUser] = useState<Models.User<Models.Preferences> | null>(
    null
  );
  const [error, setError] = useState<any>(null);

  useEffect(() => {
    const fetchAccount = async () => {
      try {
        const response = await appwriteAccount.get();
        setUser(response);
        setError(null);
      } catch (err) {
        setUser(null);
        setError(err);
      } finally {
        setLoading(false);
      }
    };

    fetchAccount();
  }, []);

  const contextValue: AppwriteUserContextProps = {
    user,
    loading,
  };
  return (
    <AppwriteUserContext.Provider value={contextValue}>
      {children}
    </AppwriteUserContext.Provider>
  );
}

export const useAppwriteUserContext = () => {
  const context = useContext(AppwriteUserContext);

  if (!context) {
    throw new Error(
      "useAppwriteUserContext must be used within a AppwriteUserContextProvider"
    );
  }

  return context;
};

export const useCreateAppwriteUserSession = () => {
  const [loading, setLoading] = useState<boolean>(false);
  const [session, setSession] = useState<Models.Session | null>(null);
  const [error, setError] = useState<Error | null>(null);

  const createSession = async () => {
    setLoading(true);
    setError(null);

    try {
      const response = await appwriteAccount.createSession(
        ID.unique(),
        "secret"
      );
      setSession(response);
    } catch (err) {
      setError(err instanceof Error ? err : new Error("Something went wrong"));
    } finally {
      setLoading(false); // Zorg ervoor dat loading altijd wordt uitgezet
    }
  };

  return {
    loading,
    session,
    error,
    createSession,
  };
};
