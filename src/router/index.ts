import { createRouter, createWebHistory } from "vue-router";
import userRoutes from "@users/router";

const routes = [
  // your routes here
  ...userRoutes,
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
