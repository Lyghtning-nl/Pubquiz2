import {
  ReactNode,
  createContext,
  useContext,
  useEffect,
  useState,
} from "react";
import { GameDocument } from "../appwrite/types";
import { appwriteDb } from "../appwrite/database";
import { Query } from "appwrite";

export const GAME_CONTEXT_LOCAL_STORAGE_KEY = "game-context";
interface GameContextProviderProps {
  children: ReactNode;
}

interface GameContextProps {
  game: GameDocument | null;
  setGame: (game: GameContextProps["game"]) => void;
  loading: boolean;
}

export const GameContext = createContext<GameContextProps | null>(null);

export function GameContextProvider({ children }: GameContextProviderProps) {
  const [loading, setLoading] = useState(true);
  const [game, setGameState] = useState<GameDocument | null>(null);

  useEffect(() => {
    const gameCodeInLocalStorage = localStorage.getItem(
      GAME_CONTEXT_LOCAL_STORAGE_KEY
    );

    if (gameCodeInLocalStorage !== null) {
      const code = JSON.parse(gameCodeInLocalStorage);

      validateGameCodeAndReturnGame(code).then((response) => {
        if (response.valid) {
          setGameState(response.game as GameDocument);
        }
        setLoading(false);
      });
    } else {
      setLoading(false);
    }
  }, []);

  const setGame = (game: GameContextProps["game"]) => {
    if (game === null) {
      localStorage.removeItem(GAME_CONTEXT_LOCAL_STORAGE_KEY);
    } else {
      localStorage.setItem(
        GAME_CONTEXT_LOCAL_STORAGE_KEY,
        JSON.stringify(game?.code)
      );
    }

    setGameState(game);
  };

  const contextValue: GameContextProps = {
    game,
    setGame,
    loading,
  };

  return (
    <GameContext.Provider value={contextValue}>{children}</GameContext.Provider>
  );
}

export const useGameContext = () => {
  const context = useContext(GameContext);

  if (!context) {
    throw new Error("useGameContext must be used within a GameContextProvider");
  }

  return context;
};

export type ValidateGameCodeAndReturnGameReturn = {
  valid: boolean;
  game: GameDocument | null;
  message: string;
};

export async function validateGameCodeAndReturnGame(
  gameCode: string
): Promise<ValidateGameCodeAndReturnGameReturn> {
  try {
    const response = await appwriteDb.games.list([
      Query.equal("code", gameCode),
    ]);

    if (response.documents.length > 0) {
      return {
        valid: true,
        game: response.documents[0] as GameDocument,
        message: "Game exists",
      };
    } else {
      return {
        valid: false,
        game: null,
        message: "Deze game bestaat niet",
      };
    }
  } catch (err) {
    return {
      valid: false,
      game: null,
      message: "Server error",
    };
  }
}
