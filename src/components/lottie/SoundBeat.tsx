import { Player } from "@lottiefiles/react-lottie-player";
import soundWaveAnimationData from "./animations/sound-beat.json";

interface SoundBeatProps {
  width?: number;
}

export function SoundBeat({ width = 500 }: SoundBeatProps) {
  return (
    <Player
      autoplay
      loop
      src={soundWaveAnimationData}
      style={{ width: "100%" }}
    />
  );
}
