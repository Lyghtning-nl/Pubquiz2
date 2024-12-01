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
            padding: `${theme.spacings.md} ${theme.spacings.md} 0`,
            height: "100svh",
            width: "100vw",
          })}
        >
          <Box
            sx={(theme) => ({
              background:
                "linear-gradient(#fff, #eef6ff) padding-box, linear-gradient(to right, #bc6499, #d4c238) border-box",
              height: "100%",
              padding: theme.spacings.md,
              overflow: "scroll",
              borderRadius: theme.shape.borderRadius,
              borderBottomLeftRadius: 0,
              borderBottomRightRadius: 0,
              boxShadow: theme.shadows[5],
              border: "3px solid transparent",
              borderBottom: "none",
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
