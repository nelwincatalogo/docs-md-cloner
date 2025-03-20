#!/bin/bash
source clone_docs.sh

# Call the function with the hookstate parameters
clone_docs \
    "avkonst" \
    "hookstate" \
    "master" \
    "docs" \
    "_docs/hookstate-docs"