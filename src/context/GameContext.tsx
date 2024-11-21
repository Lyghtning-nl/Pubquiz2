import {
  ReactNode,
  createContext,
  useContext,
  useEffect,
  useState,
} from "react";

export const GAME_CONTEXT_LOCAL_STORAGE_KEY = "game-context";

interface GameContextProps {
  game: { code: string };
  setGame: (game: GameContextProps["game"]) => void;
}

interface GameContextProviderProps {
  children: ReactNode;
}

export const useGameContext = () => {
  const game = useContext(GameContext);

  return game;
};

export const GameContext = createContext<GameContextProps | undefined>(
  undefined
);

export function GameContextProvider({ children }: GameContextProviderProps) {
  const [game, setGameState] = useState({
    code: "",
  });

  useEffect(() => {
    const GameContextInStorage = JSON.parse(
      localStorage.getItem(GAME_CONTEXT_LOCAL_STORAGE_KEY) ?? "{}"
    );

    setGameState({
      code: GameContextInStorage.code || "",
    });
  }, []);

  const setGame = (game: GameContextProps["game"]) => {
    localStorage.setItem(GAME_CONTEXT_LOCAL_STORAGE_KEY, JSON.stringify(game));
    setGameState(game);
  };

  const contextValue: GameContextProps = {
    game,
    setGame,
  };

  return (
    <GameContext.Provider value={contextValue}>{children}</GameContext.Provider>
  );
}
