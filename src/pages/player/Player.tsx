import { Logout } from "../../components/Logout";
import ScreenProvider from "../../components/ScreenProvider";

export default function Player() {
  return (
    <>
      <ScreenProvider userType="player" />

      <Logout />
    </>
  );
}
