#!/bin/bash
source clone_docs.sh

# Call the function with the shadcn-ui parameters
clone_docs \
    "vercel" \
    "next.js" \
    "main" \
    "docs" \
    "_docs/next-js-15"
