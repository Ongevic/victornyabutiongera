# Academic Portfolio Website

A modern, responsive academic portfolio website built with Astro, Tailwind CSS, and DaisyUI. Perfect for researchers, professors, and academic professionals to showcase their work, publications, and achievements.

## ✨ Features

- **Modern Design**: Clean, professional layout optimized for academic use
- **Responsive**: Works perfectly on desktop, tablet, and mobile devices
- **Fast Performance**: Built with Astro for optimal loading speeds
- **SEO Optimized**: Structured for search engine visibility
- **Dark/Light Theme**: Toggle between academic and dark themes
- **Interactive Components**: Engaging UI elements with DaisyUI
- **TypeScript Support**: Type-safe development experience

## 🚀 Quick Start

### Prerequisites

Before you begin, ensure you have installed:

- [Node.js](https://nodejs.org/) (version 18 or higher)
- npm or yarn package manager

### Installation

1. **Clone or download this repository**

   ```bash
   git clone <your-repo-url>
   cd your-academic-website
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Start the development server**

   ```bash
   npm run dev
   ```

4. **Open your browser**
   Navigate to `http://localhost:4321` to see your website

## 📁 Project Structure

```
├── src/
│   ├── layouts/
│   │   └── Layout.astro          # Main layout component
│   ├── pages/
│   │   ├── index.astro           # Homepage
│   │   ├── about.astro           # About page
│   │   ├── research.astro        # Research page
│   │   ├── publications.astro    # Publications page
│   │   └── contact.astro         # Contact page
│   └── ...
├── public/                       # Static assets
├── astro.config.mjs             # Astro configuration
├── tailwind.config.mjs          # Tailwind CSS configuration
├── tsconfig.json               # TypeScript configuration
└── package.json               # Project dependencies
```

## 🛠️ Customization

### Personal Information

1. **Update your name and title** in `src/layouts/Layout.astro` and all page files
2. **Add your profile photo** to the `public/` directory as `profile-placeholder.jpg`
3. **Modify contact information** in `src/pages/contact.astro`
4. **Update social media links** throughout the site

### Content Customization

- **Homepage**: Edit `src/pages/index.astro` to reflect your research areas and recent updates
- **About Page**: Update `src/pages/about.astro` with your biography, education, and achievements
- **Research**: Customize `src/pages/research.astro` with your current projects and interests
- **Publications**: Add your papers to `src/pages/publications.astro`
- **Contact**: Modify contact details in `src/pages/contact.astro`

### Styling

The website uses a custom academic theme with DaisyUI. To customize:

1. **Colors**: Edit the theme in `tailwind.config.mjs`
2. **Fonts**: Modify font imports in `src/layouts/Layout.astro`
3. **Components**: Adjust DaisyUI components throughout the pages

## 📝 Adding Content

### Publications

To add new publications, edit the publications list in `src/pages/publications.astro`:

```astro
<div class="card bg-base-200 shadow-lg hover:shadow-xl transition-shadow">
  <div class="card-body">
    <h3 class="card-title text-lg mb-2">Your Paper Title</h3>
    <p class="text-sm text-secondary mb-2">
      <strong>Your Name</strong>, Co-Author Names
    </p>
    <p class="text-sm text-accent mb-3">
      <strong>Conference/Journal Name</strong>, Year
    </p>
    <!-- Add your content here -->
  </div>
</div>
```

### Blog Posts

To add a blog section, create `src/pages/blog.astro` and follow the same structure as other pages.

## 🚀 Deployment

### Option 1: GitHub Pages

1. Push your code to a GitHub repository
2. Go to Settings > Pages in your repository
3. Select "GitHub Actions" as the source
4. Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [main]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout your repository using git
        uses: actions/checkout@v4
      - name: Install, build, and upload your site
        uses: withastro/action@v1
        with:
          path: .
          node-version: 18
          package-manager: npm

  deploy:
    needs: build
    runs-on: ubuntu-latest
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    steps:
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v3
```

### Option 2: Netlify

1. Connect your repository to Netlify
2. Set build command: `npm run build`
3. Set publish directory: `dist`

### Option 3: Vercel

1. Connect your repository to Vercel
2. Vercel will automatically detect Astro and configure deployment

## 🛡️ Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally
- `npm run astro` - Run Astro CLI commands

## 🎨 Technologies Used

- **[Astro](https://astro.build/)** - Static site generator
- **[Tailwind CSS](https://tailwindcss.com/)** - Utility-first CSS framework
- **[DaisyUI](https://daisyui.com/)** - Tailwind CSS component library
- **[TypeScript](https://www.typescriptlang.org/)** - Type-safe JavaScript

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](../../issues).

## 💬 Support

If you have any questions or need help customizing your website, feel free to [open an issue](../../issues) or reach out!

---

**Built with ❤️ for the academic community**
Force GitHub Pages redeploy
