import { UserTypes } from "../appwrite/types";
import { useRealtimeDataContext } from "../context/RealtimeDataContext";
import Client from "./Client";

type ScreenProviderProps = {
  userType: UserTypes;
};

export default function ScreenProvider(props: ScreenProviderProps) {
  const realtimeDataContext = useRealtimeDataContext();
  const { userType } = props;

  switch (userType) {
    case "client":
      return <Client />;
  }
}
