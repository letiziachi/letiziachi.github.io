import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import tailwind from "@astrojs/tailwind";

// https://astro.build/config
export default defineConfig({
  site: 'https://letiziachianello.com',
  // output: 'hybrid',
  integrations: [mdx(), sitemap(), tailwind()],
  i18n: {
    defaultLocale: "it",
    locales: ["it", "es"],
    routing: {
      prefixDefaultLocale: false
      // prefixDefaultLocale: true, fallback ma l'url deve sempre avere /it/
    },
    fallback: {
      es: "it"
    },
  },
  output: "hybrid" // Altrimenti non possiamo definire URL catch-all
});
