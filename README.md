# Accumultor Series

This repository holds the source for a Quarto project.

## Continuous deployment

A GitHub Actions workflow renders the site on every push to `main` and deploys
it to GitHub Pages from the `gh-pages` branch. If an `OPENAI_API_KEY` secret is
present, the workflow also calls the OpenAI API to generate a tweet thread based
on the article's abstract.
