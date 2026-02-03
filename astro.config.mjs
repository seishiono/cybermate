import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

// https://astro.build/config
export default defineConfig({
  site: 'https://seishiono.github.io',
  base: '/cybermate',
  integrations: [mdx()],
  output: 'static',
});
