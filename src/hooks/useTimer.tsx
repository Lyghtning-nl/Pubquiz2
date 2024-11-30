import { useState, useEffect, useRef } from "react";

type useTimerType = {
  active: boolean;
  onEnd: () => void;
  countdownSeconds: number;
};

type UseTimerReturnType = [number, () => void];

const useTimer = (props: useTimerType): UseTimerReturnType => {
  const { active, onEnd, countdownSeconds } = props;
  const [progress, setProgress] = useState(countdownSeconds);
  const [shouldCallOnEnd, setShouldCallOnEnd] = useState(false);

  const timerRef = useRef<NodeJS.Timeout>(null!);

  useEffect(() => {
    if (timerRef.current) {
      clearInterval(timerRef.current);
    }

    const updateProgress = () => {
      setProgress((prevProgress) => {
        const updatedProgress = Math.max(prevProgress - 1, 0);

        if (updatedProgress === 0) {
          setShouldCallOnEnd(true);
          setProgress(countdownSeconds);
          clearInterval(timerRef.current);
        }

        return updatedProgress;
      });
    };

    if (active) {
      timerRef.current = setInterval(updateProgress, 1000);
    }

    return () => {
      setProgress(countdownSeconds);
      clearInterval(timerRef.current);
    };
  }, [active, countdownSeconds]);

  useEffect(() => {
    if (shouldCallOnEnd) {
      onEnd();
      setShouldCallOnEnd(false);
    }
  }, [shouldCallOnEnd, onEnd]);

  const resetTimer = () => {
    clearInterval(timerRef.current);
    setProgress(countdownSeconds);
  };

  return [progress, resetTimer];
};

export default useTimer;
