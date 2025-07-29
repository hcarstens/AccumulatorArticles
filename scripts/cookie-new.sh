#!/bin/bash
set -euo pipefail

BASE_DIR="src"
mkdir -p "$BASE_DIR"

LAST_NUM=$(find "$BASE_DIR" -maxdepth 1 -type d -name 'article_*' 2>/dev/null | sed -e 's/.*article_//' | sort -n | tail -n1)
if [[ -z "$LAST_NUM" ]]; then
  NEXT_NUM=1
else
  NEXT_NUM=$((LAST_NUM + 1))
fi

ARTICLE_DIR="$BASE_DIR/article_${NEXT_NUM}"
mkdir -p "$ARTICLE_DIR"

cat > "$ARTICLE_DIR/article.qmd" <<'QMD'
---
title: "Article TITLE"
format: html
---

# Introduction

Write your article here.

```{python}
#| label: fig-example
#| fig-cap: "Example Plot"
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)
plt.plot(x, y)
plt.show()
```
QMD

cat > "$ARTICLE_DIR/metadata.yaml" <<EOF_META
title: "Article ${NEXT_NUM}"
author: "Your Name"
date: "$(date +%Y-%m-%d)"
EOF_META

cat > "$ARTICLE_DIR/plot.py" <<'PY'
import matplotlib.pyplot as plt


def plot():
    fig, ax = plt.subplots()
    # TODO: implement plot
    return fig, ax


if __name__ == "__main__":
    plot()
    plt.show()
PY

echo "Created ${ARTICLE_DIR}"
