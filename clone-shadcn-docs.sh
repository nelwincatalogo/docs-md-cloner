#!/bin/bash
source clone_docs.sh

# Call the function with the shadcn-ui parameters
clone_docs \
    "shadcn-ui" \
    "ui" \
    "main" \
    "apps/www/content/docs" \
    "_docs/shadcn-ui-docs"