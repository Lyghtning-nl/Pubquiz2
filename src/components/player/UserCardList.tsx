import { CircularProgress, Stack, StackOwnProps } from "@mui/material";
import { UserCard } from "./UserCard";
import { useListMemberships } from "../../hooks/useListMemberships";
import { useEffect } from "react";

export type ActiveUsersInRoomProps = {
  reportActiveUserCountMethod?: (count: number) => void;
  stackDirection?: StackOwnProps["direction"];
  showScore?: boolean;
};

export function UserCardList(props: ActiveUsersInRoomProps) {
  const { reportActiveUserCountMethod, stackDirection, showScore } = props;
  const { memberships, loading } = useListMemberships();

  useEffect(() => {
    if (reportActiveUserCountMethod && memberships) {
      reportActiveUserCountMethod(memberships.length);
    }
  }, [memberships]);

  if (loading || memberships === null) return <CircularProgress />;

  return (
    <Stack spacing={2} direction={stackDirection} gap={2} flexWrap="wrap">
      {memberships.map((membership) => {
        return (
          <UserCard
            membership={membership}
            key={membership.$id}
            showScore={showScore}
          />
        );
      })}
    </Stack>
  );
}
