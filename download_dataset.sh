#!/bin/bash
set -e  # stop on first error

DATA_DIR="dataset"
ZIP_FILE="$DATA_DIR/autism-dataset.zip"
URL="https://www.kaggle.com/api/v1/datasets/download/umeradnaan/autism-screening"

mkdir -p "$DATA_DIR"

echo "Downloading dataset..."
curl -L -o "$ZIP_FILE" "$URL"

echo "Unzipping..."
unzip -o "$ZIP_FILE" -d "$DATA_DIR"

echo "✅ Done."