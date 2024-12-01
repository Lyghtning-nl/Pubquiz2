import { Logout } from "../../components/Logout";
import { SetDisplayName } from "../../components/player/SetDisplayName";
import ScreenProvider from "../../components/ScreenProvider";
import { useAppwriteUserContext } from "../../context/AppwriteUserContext";

export default function Player() {
  const { user, loading } = useAppwriteUserContext();

  if (!loading && user && user?.name === "") return <SetDisplayName />;

  return (
    <>
      <ScreenProvider userType="player" />

      <Logout />
    </>
  );
}
