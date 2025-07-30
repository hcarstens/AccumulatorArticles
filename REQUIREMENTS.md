# Project Requirements

This repository uses **Quarto** for site generation and Python for the example scripts and tests.

## Quarto CLI

Install the [Quarto](https://quarto.org/docs/get-started/) command line tools (version 1.3 or higher). After installation you can render the site locally with:

```bash
quarto render
```

## Python

Create a virtual environment and install the Python packages listed in `requirements.txt`:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run tests with:

```bash
pytest
```

