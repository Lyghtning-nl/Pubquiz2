import { useCallback, useEffect, useState } from "react";
import { appwriteClient, appwriteTeams } from "../appwrite/config";
import { useGameContext } from "../context/GameContext";
import { Models } from "appwrite";

export const useListMemberships = () => {
  const { game } = useGameContext();
  const [loading, setLoading] = useState(true);
  const [memberships, setMemberships] = useState<Models.Membership[] | null>(
    null
  );

  const listMemberships = useCallback(async () => {
    if (!game?.code) return;

    setLoading(true);

    try {
      const response = await appwriteTeams.listMemberships(game.code);
      setMemberships(
        response.memberships.filter(
          (membership) => membership.userName !== "Master"
        )
      );
    } catch (error) {
      console.error("Error fetching memberships:", error);
    } finally {
      setLoading(false);
    }
  }, [game?.code]);

  const addMembership = useCallback((newMembership: Models.Membership) => {
    setMemberships((prevMemberships) => {
      if (!prevMemberships) return [newMembership];
      return [...prevMemberships, newMembership];
    });
  }, []);

  useEffect(() => {
    if (!game?.code) return;

    listMemberships();

    const unsubscribeMemberships = appwriteClient.subscribe(
      `memberships`,
      (response) => {
        const newMembership = response.payload as Models.Membership;

        if (newMembership) {
          addMembership(newMembership);
        }
      }
    );

    return () => {
      unsubscribeMemberships();
    };
  }, [game?.code, listMemberships, addMembership]);

  return { loading, memberships };
};
