import { Models } from "appwrite";
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
  setUser: (user: AppwriteUserContextProps["user"]) => void;
  loading: boolean;
}

export const AppwriteUserContext =
  createContext<AppwriteUserContextProps | null>(null);

export function AppwriteUserContextProvider({
  children,
}: AppwriteUserContextProviderProps) {
  const [loading, setLoading] = useState(true);
  const [user, setUserState] = useState<Models.User<Models.Preferences> | null>(
    null
  );

  useEffect(() => {
    const fetchAccount = async () => {
      try {
        const response = await appwriteAccount.get();
        setUser(response);
      } catch (err) {
        setUser(null);
      } finally {
        setLoading(false);
      }
    };

    fetchAccount();
  }, []);

  const setUser = (user: AppwriteUserContextProps["user"]) => {
    setUserState(user);
  };

  const contextValue: AppwriteUserContextProps = {
    user,
    setUser,
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
