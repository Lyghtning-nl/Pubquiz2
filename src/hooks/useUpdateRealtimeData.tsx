import { RealtimeDataDocument } from "../appwrite/types";
import { useRealtimeDataContext } from "../context/RealtimeDataContext";

export const useUpdateRealtimeData = () => {
  const { setRealtimeData, realtimeData } = useRealtimeDataContext();

  const update = <K extends keyof RealtimeDataDocument>(
    field: K,
    value: RealtimeDataDocument[K]
  ) => {
    if (realtimeData) {
      setRealtimeData({
        ...realtimeData,
        [field]: value,
      });
    }
  };

  return update;
};
