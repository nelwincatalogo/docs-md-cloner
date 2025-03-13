#!/bin/bash
source clone_docs.sh

# Call the function with the shadcn-ui parameters
clone_docs \
    "drizzle-team" \
    "drizzle-orm-docs" \
    "main" \
    "src/content/docs" \
    "_docs/drizzle-orm-0.40"
