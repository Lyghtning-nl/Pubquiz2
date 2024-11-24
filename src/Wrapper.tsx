import { IonContent, IonPage } from "@ionic/react";
import { Box, Container } from "@mui/material";
import React from "react";

type WrapperProps = {
  children: React.ReactNode;
};

export default function Wrapper({ children }: WrapperProps): JSX.Element {
  return (
    <IonPage>
      <IonContent fullscreen>
        <Box
          sx={(theme) => ({
            background: theme.palette.primary.main,
            padding: theme.spacings.md,
            height: "100svh",
            width: "100vw",
          })}
        >
          <Box
            sx={(theme) => ({
              background: theme.palette.background.paper,
              height: "100%",
              padding: theme.spacings.md,
              overflow: "scroll",
              borderRadius: theme.shape.borderRadius,
              boxShadow: theme.shadows[5],
            })}
          >
            <Container
              disableGutters={true}
              maxWidth={false}
              sx={{
                height: "100%",
              }}
            >
              {children}
            </Container>
          </Box>
        </Box>
      </IonContent>
    </IonPage>
  );
}
