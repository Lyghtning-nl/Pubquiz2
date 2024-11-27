import { Cancel, CheckCircle } from "@mui/icons-material";
import { alpha, Box, Grow, Typography } from "@mui/material";
import { useEffect, useState } from "react";

export const CorrectnessAnimation = (props: {
  correct: boolean | null;
  correctAnswer: string;
}) => {
  const { correct, correctAnswer } = props;
  const [visible, setVisible] = useState(true);

  useEffect(() => {
    setVisible(true);

    const timeout = setTimeout(() => {
      setVisible(false);
    }, 5000);

    return () => {
      clearTimeout(timeout);
    };
  }, [correct]);

  const getIcon = (): any => {
    if (correct)
      return (
        <CheckCircle sx={(theme) => ({ fill: theme.palette.success.main })} />
      );
    if (!correct)
      return <Cancel sx={(theme) => ({ fill: theme.palette.error.main })} />;
  };

  return (
    <Box
      sx={(theme) => ({
        zIndex: 5,
        background: alpha(theme.palette.background.paper, 0.7),
        backdropFilter: "blur(10px)",
        borderRadius: theme.shape.borderRadius,
        boxShadow: theme.shadows[5],
        position: "fixed",
        top: "50%",
        left: "50%",
        transform: "translate(-50%, -50%)",
        display: `${visible ? "block" : "none"}`,
      })}
    >
      <Grow
        in={visible}
        style={{
          transformOrigin: "center",
          width: "80vw",
          height: "80vw",
        }}
      >
        {getIcon()}
      </Grow>
      <Box
        sx={{
          padding: 2,
          textAlign: "center",
        }}
      >
        <Typography variant="h4">&quot;{correctAnswer}&quot;</Typography>
      </Box>
    </Box>
  );
};
