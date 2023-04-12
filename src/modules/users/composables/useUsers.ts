import { ref } from "vue";
import { User } from "@users/types";

export const useUsers = () => {
  const users = ref<User | null>(null);

  function getUsers() {}

  return {
    users,
    getUsers,
  };
};
