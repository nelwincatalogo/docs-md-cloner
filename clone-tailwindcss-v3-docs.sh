#!/bin/bash
source clone_docs.sh

# Call the function with the tailwindcss v3 parameters
clone_docs \
    "tailwindlabs" \
    "tailwindcss.com" \
    "v3" \
    "src/pages/docs" \
    "_docs/tailwindcss-v3-docs"