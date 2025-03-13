#!/bin/bash
source clone_docs.sh

# Call the function with the shadcn-ui parameters
clone_docs \
    "better-auth" \
    "better-auth" \
    "main" \
    "docs/content/docs" \
    "_docs/better-auth"
