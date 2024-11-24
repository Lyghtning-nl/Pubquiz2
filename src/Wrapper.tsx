import { IonContent, IonPage } from "@ionic/react";
import { Box, Container, Stack } from "@mui/system";
import React from "react";

type WrapperProps = {
  children: React.ReactNode;
};

export default function Wrapper({ children }: WrapperProps): JSX.Element {
  return (
    <IonPage>
      <IonContent fullscreen>
        <Stack sx={{ py: 3, height: "100%", background: "lightblue" }}>
          <Container maxWidth={false}>{children}</Container>
        </Stack>
      </IonContent>
    </IonPage>
  );
}
