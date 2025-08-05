# Critjecture - Data Science Consulting Website

A modern, professional website built with Quarto for Critjecture, a data science consulting company. This website showcases services, blog content, and provides a platform for client engagement.

## Features

- **Modern Design**: Clean, professional design with responsive layout
- **Blog System**: Built-in blog functionality with Quarto's blog features
- **Service Showcase**: Comprehensive service offerings with pricing
- **Contact Forms**: Multiple ways for clients to get in touch
- **SEO Optimized**: Built-in SEO features and meta tags
- **Fast Performance**: Static site generation for optimal speed
- **Mobile Responsive**: Works perfectly on all devices

## Getting Started

### Prerequisites

1. **Install Quarto**: Download and install Quarto from [quarto.org](https://quarto.org/docs/get-started/)
2. **Install R** (optional): For R code execution and advanced features
3. **Install Python** (optional): For Python code execution

### Installation

1. Clone this repository:
```bash
git clone <repository-url>
cd critjecture_com
```

2. Install dependencies (if using R):
```r
install.packages(c("rmarkdown", "knitr"))
```

3. Build the website:
```bash
quarto render
```

4. Preview the website:
```bash
quarto preview
```

The website will be available at `http://localhost:4848`

## Project Structure

```
critjecture_com/
├── _quarto.yml          # Main configuration file
├── index.qmd            # Homepage
├── about.qmd            # About page
├── services.qmd         # Services page
├── contact.qmd          # Contact page
├── blog/                # Blog directory
│   ├── index.qmd        # Blog index page
│   └── *.qmd           # Individual blog posts
├── styles.css           # Custom CSS styles
├── static/              # Static assets (images, etc.)
└── _site/               # Generated website (after build)
```

## Configuration

### Main Configuration (`_quarto.yml`)

The main configuration file controls:
- Site metadata and navigation
- Theme and styling
- Blog settings
- Search functionality
- Social sharing
- Analytics

### Customization

#### Colors and Branding
Edit the CSS variables in `styles.css`:
```css
:root {
  --primary-color: #2563eb;
  --secondary-color: #64748b;
  /* ... other variables */
}
```

#### Navigation
Update the navigation in `_quarto.yml`:
```yaml
navbar:
  left:
    - href: index.qmd
      text: Home
    # ... other pages
```

#### Blog Settings
Configure blog features in `_quarto.yml`:
```yaml
blog:
  title: "Critjecture Blog"
  description: "Insights and tips for data-driven business decisions"
  page-size: 10
  feed: true
```

## Adding Content

### New Pages
1. Create a new `.qmd` file in the root directory
2. Add YAML front matter:
```yaml
---
title: "Page Title"
description: "Page description"
---
```
3. Add the page to navigation in `_quarto.yml`

### Blog Posts
1. Create a new `.qmd` file in the `blog/` directory
2. Add YAML front matter with metadata:
```yaml
---
title: "Post Title"
description: "Post description"
date: 2024-01-15
categories: ["Category"]
tags: ["tag1", "tag2"]
---
```
3. Write your content using Markdown and Quarto features

### Images and Assets
- Place images in the `static/` directory
- Reference them in your content: `![Alt text](static/image.jpg)`

## Deployment

### GitHub Pages
1. Push your code to GitHub
2. Enable GitHub Pages in repository settings
3. Set source to GitHub Actions
4. Create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: quarto-dev/setup-quarto@v2
      - uses: actions/setup-python@v4
        with:
          python-version: '3.10'
      - name: Install dependencies
        run: |
          pip install -r requirements.txt
      - name: Render
        run: quarto render
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./_site
```

### Netlify
1. Connect your repository to Netlify
2. Set build command: `quarto render`
3. Set publish directory: `_site`

### Vercel
1. Connect your repository to Vercel
2. Set build command: `quarto render`
3. Set output directory: `_site`

## Customization Guide

### Adding New Services
1. Edit `services.qmd` to add new service cards
2. Update pricing information
3. Add relevant content and descriptions

### Modifying Contact Form
1. Edit the form in `contact.qmd`
2. Add form processing (e.g., Netlify Forms, Formspree)
3. Update contact information

### Changing Theme
1. Modify `_quarto.yml` theme settings
2. Update `styles.css` for custom styling
3. Consider using Quarto themes from the gallery

## SEO Optimization

The website includes:
- Meta tags and descriptions
- Open Graph tags for social sharing
- Structured data markup
- Sitemap generation
- Search functionality

### Adding Analytics
1. Get your Google Analytics ID
2. Update `_quarto.yml`:
```yaml
google-analytics: G-XXXXXXXXXX
```

## Performance Tips

1. **Optimize Images**: Use WebP format and appropriate sizes
2. **Minimize CSS**: The included CSS is already optimized
3. **Use CDN**: Consider using a CDN for static assets
4. **Enable Caching**: Configure server caching headers

## Troubleshooting

### Common Issues

1. **Build Errors**: Check YAML syntax in `_quarto.yml`
2. **Missing Dependencies**: Install required R/Python packages
3. **Styling Issues**: Check CSS file paths and syntax
4. **Navigation Problems**: Verify page paths in `_quarto.yml`

### Getting Help

- [Quarto Documentation](https://quarto.org/docs/)
- [Quarto GitHub](https://github.com/quarto-dev/quarto)
- [Quarto Community](https://github.com/quarto-dev/quarto/discussions)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally with `quarto preview`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support or questions about this website template, please contact:
- Email: contact@critjecture.com
- Website: https://critjecture.com

---

**Built with ❤️ using Quarto**
