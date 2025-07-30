
# Accumultor Series

This repository holds the source for a Quarto project.

## Continuous deployment

A GitHub Actions workflow renders the site on every push to `main` and deploys
it to GitHub Pages from the `gh-pages` branch. If an `OPENAI_API_KEY` secret is
present, the workflow also calls the OpenAI API to generate a tweet thread based
on the article's abstract.

**Write in .qmd ➜ preview locally ➜ commit ➜ CI renders & tests ➜ publish static site—**repeat for every article or update.

This repository demonstrates a CI setup with spell checking, link checking, and pytest.

For more information visit [GitHub](https://github.com) or check out [Example](https://example.com).

This project explores a minimal approach to accumulator algorithms while championing personal freedom in design and usage.

## Overview

The **accumultor-series** repository contains a collection of simple accumulator examples. Each example focuses on clarity and self-reliance, with minimal dependence on bulky frameworks. Feel free to study them, adapt them, and build new tools in your own way.

## Getting Started

Clone the repo and dive into the code. There are no elaborate setup steps or rigid rules, giving you the flexibility to tailor things to your needs.
For tooling and environment details see [REQUIREMENTS.md](REQUIREMENTS.md).

Use `scripts/cookie-new.sh` or `./scaffold_article.sh <name>` to start a new
article. Both scripts place the resulting directory under `src/`.

## License

This project is released into the public domain. Use it as you see fit, and share any improvements you make.

