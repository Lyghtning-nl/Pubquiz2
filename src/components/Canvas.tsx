import {
  Download,
  Send,
  SettingsBackupRestore,
  Undo,
} from "@mui/icons-material";
import { Button, IconButton, useTheme } from "@mui/material";
import { Box } from "@mui/system";
import * as React from "react";
import {
  CanvasPath,
  ReactSketchCanvas,
  ReactSketchCanvasRef,
} from "react-sketch-canvas";
import { appwriteDb } from "../appwrite/database";

export const CanvasInput = () => {
  const theme = useTheme();
  // Explicitly type the ref
  const canvasRef = React.createRef<ReactSketchCanvasRef>();
  const exportCanvas = async () => {
    const drawing = await canvasRef.current?.exportPaths();

    appwriteDb.answers.create({
      input_type: "Canvas",
      question_id: "1",
      content: JSON.stringify(drawing),
    });
  };

  return (
    <Box>
      <ReactSketchCanvas
        style={{
          background: "#FFF",
          border: "1px solid #eee",
          boxShadow: theme.shadows[1],
        }}
        width="100%"
        height="400"
        strokeWidth={4}
        strokeColor="#333"
        ref={canvasRef}
      />
      <IconButton
        color="primary"
        onClick={() => canvasRef.current?.resetCanvas()}
      >
        <SettingsBackupRestore />
      </IconButton>

      <IconButton color="primary" onClick={() => canvasRef.current?.undo()}>
        <Undo />
      </IconButton>

      <Button
        variant="contained"
        endIcon={<Send />}
        color="primary"
        onClick={() => exportCanvas()}
      >
        Verzenden
      </Button>
    </Box>
  );
};

type CanvasViewerProps = {
  canvasPath?: CanvasPath[];
};
export const CanvasViewer = (props: CanvasViewerProps) => {
  const canvasRef = React.createRef<ReactSketchCanvasRef>();
  const { canvasPath } = props;

  React.useEffect(() => {
    if (canvasPath) canvasRef.current?.loadPaths(canvasPath);
  });

  return (
    <Box>
      <ReactSketchCanvas
        style={{
          background: "#FFF",
          border: "1px solid #eee",
          pointerEvents: "none",
        }}
        width="600"
        height="400"
        ref={canvasRef}
      />
    </Box>
  );
};
