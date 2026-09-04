import tailwindcss from "@tailwindcss/vite";
import { defineConfig } from "astro/config";

export default defineConfig({
  compressHTML: true,
  prefetch: {
    prefetchAll: true,
  },
  site: "https://ocd.beauty",
  vite: {
    build: {
      cssMinify: "lightningcss",
    },
    plugins: [tailwindcss()],
  },
});
