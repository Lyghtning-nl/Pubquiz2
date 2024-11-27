import ScreenProvider from "../../components/ScreenProvider";
import { Logout } from "../../components/Logout";

export default function Center() {
  return (
    <>
      <ScreenProvider userType="center" />

      <Logout />
    </>
  );
}
