import { theme } from "./theme/theme";
import { GameContextProvider } from "./context/GameContext";
import { AppwriteUserContextProvider } from "./context/AppwriteUserContext";
import { RealtimeDataContextProvider } from "./context/RealtimeDataContext";
import { ThemeProvider } from "@mui/material";
import Wrapper from "./Wrapper";

type ContextProvidersProps = {
  children: React.ReactNode;
};
export const ContextProviders = ({ children }: ContextProvidersProps) => {
  return (
    <ThemeProvider theme={theme}>
      <Wrapper>
        <GameContextProvider>
          <AppwriteUserContextProvider>
            <RealtimeDataContextProvider>
              {children}
            </RealtimeDataContextProvider>
          </AppwriteUserContextProvider>
        </GameContextProvider>
      </Wrapper>
    </ThemeProvider>
  );
};
