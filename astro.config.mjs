import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "astro/config";

export default defineConfig({
  base: "/",
  site: "https://www.ocd.beauty",
  trailingSlash: "always",

  vite: {
    plugins: [tailwindcss()],
  },
});
