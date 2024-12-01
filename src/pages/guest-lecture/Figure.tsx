import React, { useEffect, useState } from "react";

const MovingDiv = () => {
  const [position, setPosition] = useState(-200);
  const duration = 60 * 1000;

  useEffect(() => {
    const moveDiv = () => {
      setPosition(window.innerWidth);
      setTimeout(() => {
        setPosition(-200);
      }, duration);
    };

    moveDiv();
    const interval = setInterval(moveDiv, duration);

    return () => clearInterval(interval);
  }, [duration]);

  return (
    <div
      style={{
        position: "fixed",
        bottom: -15,
        left: `${position}px`,
        width: "100%",
        height: "150px",
        display: "flex",
        alignItems: "center",
        transition: `left ${duration / 8000}s linear`,
        animation: "wave 5s infinite",
        zIndex: 100,
      }}
    >
      <div
        style={{
          width: "200px",
          height: "200px",
          backgroundImage: "url('/assets/guest-lecture/sint.png')",
          backgroundSize: "contain",
          backgroundRepeat: "no-repeat",
          animation: "float 3s ease-in-out infinite",
        }}
      />

      <style>
        {`
          @keyframes wave {
            0%, 100% {
              transform: translateY(0);
            }
            50% {
              transform: translateY(-20px);
            }
          }

          @keyframes float {
            0%, 100% {
              transform: translateY(0);
            }
            50% {
              transform: translateY(-15px);
            }
          }
        `}
      </style>
    </div>
  );
};

export default MovingDiv;
