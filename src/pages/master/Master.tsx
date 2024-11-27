import { Logout } from "../../components/Logout";
import ScreenProvider from "../../components/ScreenProvider";

export default function Master() {
  return (
    <>
      <ScreenProvider userType="master" />

      <Logout />
    </>
  );
}
