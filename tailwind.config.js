/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'primary-green': '#19dc82',
        'primary-dark': '#020617',
      },
      backgroundImage: {
        'radial-green': 'radial-gradient(circle at center, #19dc82, transparent)',
        'radial-green-soft': 'radial-gradient(ellipse at center, rgba(25, 220, 130, 0.3), transparent)',
      },
    },
  },
  plugins: [],
}

