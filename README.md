# docs-md-cloner

## Overview

**docs-md-cloner** is a simple Bash script that allows you to clone only the documentation (`docs`) folder from various open-source repositories like Next.js, DrizzleORM, TailwindCSS, ShadCN, BetterAuth, and more. It uses Git's sparse checkout feature to fetch only the required documentation, minimizing disk usage and clone time.

## Features

- Clone only the `docs` folder from a GitHub repository
- Works with multiple repositories
- Lightweight and efficient
- Easy to extend with new repositories

## Prerequisites

Ensure you have the following installed on your system:

- **Git** (latest version recommended)
- **Bash** (for running the scripts)

## Getting Started

### 1. Clone the Repository

To get started, clone this repository to your local system:

```bash
git clone https://github.com/ala-garbaa-pro/docs-md-cloner.git
cd docs-md-cloner
```

### 2. Run the Cloning Scripts

The scripts provided will clone documentation from specific repositories. You can run them individually or all at once.

#### Clone a Single Docs Folder

Each repository has its own script. To clone documentation for a specific tool, run:

```bash
bash clone-next-js-docs.sh
```

Replace `clone-next-js-docs.sh` with any other available script as needed.

#### Clone All Docs at Once

To clone all available documentation, run:

```bash
bash clone-all.sh
```

This will execute all the individual scripts sequentially.

## How It Works

The core logic resides in `clone_docs.sh`, which defines the `clone_docs` function. Here’s what it does:

1. Removes any existing local directory for the docs.
2. Creates a new directory for the docs.
3. Clones only the specified docs folder from a repository using Git sparse checkout.
4. Moves the docs content to the appropriate location and cleans up unnecessary files.

### Example Usage

You can use the function in a custom script like this:

```bash
#!/bin/bash
source clone_docs.sh

clone_docs \
    "vercel" \
    "next.js" \
    "canary" \
    "docs" \
    "_docs/next-js-15"
```

```bash
#!/bin/bash
source clone_docs.sh

# Call the function with parameters
clone_docs \
    "drizzle-team" \
    "drizzle-orm-docs" \
    "main" \
    "src/content/docs" \
    "_docs/drizzle-orm-0.40"

```

```bash
#!/bin/bash
source clone_docs.sh

# Call the function with parameters
clone_docs \
    "shadcn-ui" \
    "ui" \
    "main" \
    "apps/www/content/docs" \
    "_docs/shadcn-ui-docs"
```

```bash
#!/bin/bash
source clone_docs.sh

# Call the function with parameters
clone_docs \
    "tailwindlabs" \
    "tailwindcss.com" \
    "main" \
    "src/docs" \
    "_docs/tailwindcss-docs"

```

```bash
#!/bin/bash
source clone_docs.sh

# Call the function with parameters
clone_docs \
    "better-auth" \
    "better-auth" \
    "main" \
    "docs/content/docs" \
    "_docs/better-auth"

```

This will clone the `docs` folder from the Next.js repository and store it inside `_docs/next-js-15`.

## Contributing

We welcome contributions! To contribute:

1. Fork the repository.
2. Create a new branch for your feature/fix.
3. Make your changes and test them.
4. Submit a pull request.

## License

This project is open-source and available under the **MIT License**.

## More Information

For more details, visit the blog post: [Bash Shell Script to Clone Next.js 15, Drizzle ORM, or Any Documentation Locally as Markdown Files](https://www.alagarbaa.com/blog/p/bash-shell-script-to-clone-next-js-15-drizzle-orm-or-any-documentation-locally-as-markdown-files)

## Enjoy!

Start using **docs-md-cloner** and easily fetch documentation from your favorite projects!
