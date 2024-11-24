import { Router, Request, Response } from "express";
import { ID, Models } from "node-appwrite";
import { appwriteTeams, appwriteUsers } from "../appwrite/config";
import {
  CreateAppwriteUserMembershipResponse,
  CreateAppwriteUserResponse,
  UpdateAppwriteUserNameResponse,
} from "../../src/appwrite/types";

const router = Router();

router.post(
  "/user/create",
  async (req: Request, res: Response<CreateAppwriteUserResponse>) => {
    const { teamId } = req.body;

    try {
      const user: Models.User<Models.Preferences> = await appwriteUsers.create(
        ID.unique()
      );

      const team: Models.Membership = await appwriteTeams.createMembership(
        teamId,
        [],
        undefined,
        user.$id
      );

      const token: Models.Token = await appwriteUsers.createToken(user.$id);

      res.status(200).json({
        message: "Session created successfully",
        user,
        team,
        token,
      });
    } catch (error: any) {
      res.status(500).json({
        error: error.message || "An error occurred while creating the session",
      } as any);
    }
  }
);

router.patch(
  "/user/update/name",
  async (req: Request, res: Response<UpdateAppwriteUserNameResponse>) => {
    const { id, name } = req.body;

    try {
      const user: Models.User<Models.Preferences> =
        await appwriteUsers.updateName(id, name);

      res.status(200).json({
        message: "Name udated successfully",
        user,
      });
    } catch (error: any) {
      res.status(500).json({
        error: error.message || "Error updating name",
      } as any);
    }
  }
);

export default router;
