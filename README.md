# FRACP - Static Website

Static website for the Fédération Romande d'Agriculture Contractuelle de Proximité (FRACP) - the French-speaking Swiss Federation for Community-Supported Agriculture.

Built with [Middleman](https://middlemanapp.com/).

## Prerequisites

- Ruby 4.0+

## Project Structure

```
fracp-ch/
├── .github/workflows/      # GitHub Actions for deployment
│   └── deploy.yml
├── source/
│   ├── layouts/
│   │   └── default.erb     # Main layout template
│   ├── assets/
│   │   ├── css/            # Stylesheets
│   │   └── images/         # Site images
│   ├── index.html.erb      # Home page
│   ├── modele-acp.html.erb # CSA model page
│   ├── avantages-modele-acp.html.erb  # CSA model advantages page
│   ├── creer-une-acp.html.erb         # Create a CSA page
│   ├── carte.html.erb      # Map page
│   └── paniers.html.erb    # Baskets page
├── build/                  # Generated site (do not modify)
├── config.rb               # Middleman configuration
├── Gemfile                 # Ruby dependencies
└── README.md               # This file
```

## Installation

```bash
bundle install
```

## Local Development

Start the development server with live reload:

```bash
bundle exec middleman server
```

The site will be available at http://localhost:4567

## Build the Site

```bash
bundle exec middleman build
```

The site will be generated in the `build/` folder.

## Deployment to GitHub Pages

The site is automatically deployed to GitHub Pages via GitHub Actions when you push to the `main` branch.

### Custom Domain Configuration

1. In the GitHub repo settings, go to "Pages"
2. Configure the custom domain: `fracp.ch`
3. Update the DNS at your registrar:
   - Type A: `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - Type CNAME for `www`: `fracpch.github.io`

## Editing Content

### Pages

Pages are located in `source/`. Each `.html.erb` file generates an HTML page.

Page format:

```erb
---
title: Page Title
description: SEO description
---

<section class="page-content">
  <div class="container">
    <!-- HTML content here -->
  </div>
</section>
```

### Layout

The main layout is in `source/layouts/default.erb`. It contains the header, footer, and common structure for all pages.

### Styles

CSS styles are in `source/assets/css/`. Main colors can be modified via CSS variables at the beginning of the stylesheet.

### Images

Images are in `source/assets/images/`. Use the `image_tag` helper in templates:

```erb
<%= image_tag 'image-name.png', alt: 'Description' %>
```

## Available Helpers

- `site_title` - Site title
- `site_email` - Contact email
- `map_url` - CSA map URL
- `current_year` - Current year
- `active_link_class(path)` - Returns 'active' if the path matches the current page
- `image_tag`, `link_to`, `mail_to` - Standard Middleman helpers
