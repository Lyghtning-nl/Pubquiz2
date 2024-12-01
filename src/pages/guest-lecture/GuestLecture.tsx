"use client";

import { Box, Button } from "@mui/material";
import { ChevronLeft, ChevronRight } from "@mui/icons-material";
import { useState } from "react";
import { Intro } from "./slides/intro";
import { Today } from "./slides/today";
import { Assignment1 } from "./slides/assignment1";
import MovingDiv from "./Figure";
import { Demo } from "./slides/demo";
import { Assignment2 } from "./slides/assignment2";

export default function GuestLecture() {
  const [slideIndex, setSlideIndex] = useState(0);

  const nextSlide = () => {
    setSlideIndex(slideIndex + 1);
  };

  const prevSlide = () => {
    setSlideIndex(slideIndex - 1);
  };

  const slides = [Intro, Today, Demo, Assignment1, Assignment2];
  const CurrentSlide = slides[slideIndex];

  return (
    <Box>
      <MovingDiv />

      <CurrentSlide />

      <Box
        sx={{
          position: "absolute",
          bottom: 10,
          width: "100%",
          display: "flex",
          left: 0,
          justifyContent: "space-between",
          zIndex: 100,

          svg: {
            color: "#333",
            background: "#FFF",
            borderRadius: "50%",
          },
        }}
      >
        {slideIndex > 0 && (
          <Button onClick={() => prevSlide()}>
            <ChevronLeft fontSize="large" />
          </Button>
        )}

        {slideIndex !== slides.length - 1 && (
          <Button onClick={() => nextSlide()} sx={{ marginLeft: "auto" }}>
            <ChevronRight fontSize="large" />
          </Button>
        )}
      </Box>
    </Box>
  );
}
