const userRoutes = [
  {
    path: "/users",
    name: "Users",
    component: () => import("@users/views/index.vue"),
  },
];

export default userRoutes;
