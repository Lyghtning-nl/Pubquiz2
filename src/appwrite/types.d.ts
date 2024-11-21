import { Models } from "appwrite";

export type AnswerDocument = Models.Document & {
  input_type: "Keyboard" | "Canvas";
  content: string;
  question_id: string;
};

export type RealtimeDataDocument = Models.Document & {
  countdown_timer_active: boolean;
  question_index: number;
  round_index: number;
  screen: "index" | "intro" | "arena" | "summary";
};

export type UserTypes = "client" | "center" | "master";
