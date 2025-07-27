import { fontFamily } from 'tailwindcss/defaultTheme'

/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{html,js,astro,ts,svelte}'],
  theme: {
    extend: {
      fontFamily: {
        serif: ['"EB Garamond"', ...fontFamily.serif],
        sans: ['Inter', ...fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('daisyui'),
  ],
  daisyui: {
    themes: [
      'coffee',
      'lemonade',
    ],
  },
}
