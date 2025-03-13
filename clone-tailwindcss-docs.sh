#!/bin/bash
source clone_docs.sh

# Call the function with the shadcn-ui parameters
clone_docs \
    "tailwindlabs" \
    "tailwindcss.com" \
    "main" \
    "src/docs" \
    "_docs/tailwindcss-docs"
