# alievk.github.io

Personal site powered by Jekyll.

## Requirements

- Homebrew `ruby@3.3` installed.
- Bundler gems installed via `bundle install`.

## Run locally

Use the helper scripts to set the right Ruby and SDK:

```
script/with-ruby bundle install
script/serve
```

The site will be available at `http://localhost:4000`.

## Deploy

This repo is published by GitHub Pages via the workflow in `.github/workflows/jekyll.yml`.
Push to `main` and the site will build and deploy automatically.
