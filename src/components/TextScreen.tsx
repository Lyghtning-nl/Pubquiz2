import { Divider, Stack, Typography } from "@mui/material";
import { ReactNode } from "react";

type TextScreenProps = {
  h1?: string;
  h2?: string;
  h3?: string;
  children?: ReactNode;
};

export const TextScreen = (props: TextScreenProps) => {
  const { h1, h2, h3, children } = props;

  return (
    <Stack alignItems="center">
      {h1 && (
        <Typography
          variant="h1"
          dangerouslySetInnerHTML={{ __html: h1 }}
          textAlign="center"
        />
      )}

      <Divider sx={{ width: "100%" }} />

      {h2 && (
        <Typography
          variant="h2"
          dangerouslySetInnerHTML={{ __html: h2 }}
          textAlign="center"
        />
      )}

      {h3 && (
        <Typography
          variant="h3"
          dangerouslySetInnerHTML={{ __html: h3 }}
          textAlign="center"
        />
      )}

      {children}
    </Stack>
  );
};
