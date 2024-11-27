import { Models } from "appwrite";

export type AnswerDocument = Models.Document & {
  input_type: "Keyboard" | "Canvas";
  content: string;
  question_id: string;
  user_id: string;
  correct: boolean;
};

export type RealtimeDataDocument = Models.Document & {
  countdown_timer_active: boolean;
  question_id: string;
  round_index: number;
  screen: "index" | "intro" | "arena" | "summary";
};

export type GameDocument = Models.Document & {
  code: string;
};

export type UserTypes = "player" | "center" | "master" | "generic";

// Backend response type
export interface CreateAppwriteUserResponse {
  message: string;
  user: Models.User<Models.Preferences>;
  team: Models.Membership;
  token: Models.Token;
}

export interface UpdateAppwriteUserNameResponse {
  message: string;
  user: Models.User<Models.Preferences>;
}

export interface CreateAppwriteUserMembershipResponse {
  message: string;
  membership: Models.Membership;
}
