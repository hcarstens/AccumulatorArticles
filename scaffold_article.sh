#!/bin/bash
set -euo pipefail

if [ $# -lt 1 ]; then
    echo "Usage: $0 <article-name>" >&2
    exit 1
fi

article_name="$1"
base_dir="$(dirname "$0")/articles/$article_name"

if [ -e "$base_dir" ]; then
    echo "Error: directory $base_dir already exists" >&2
    exit 1
fi

mkdir -p "$base_dir/assets"

cat > "$base_dir/README.md" <<EOM
# $article_name

Brief summary of $article_name.
EOM

cat > "$base_dir/draft.md" <<EOM
# $article_name

Start writing your article here.
EOM

cat > "$base_dir/metadata.yml" <<EOM
title: $article_name
author: YOUR NAME
status: draft
EOM

printf 'New article scaffolding created at %s\n' "$base_dir"

