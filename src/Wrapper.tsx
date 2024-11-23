import { Box, Container } from "@mui/system";
import React from "react";

type WrapperProps = {
  children: React.ReactNode;
};

export default function Wrapper({ children }: WrapperProps): JSX.Element {
  return (
    <Box sx={{ py: 3 }}>
      <Container maxWidth={false}>{children}</Container>
    </Box>
  );
}
