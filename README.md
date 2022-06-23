# TypeScript Node Template

This template gets you started with:

- TypeScript (setup for node v16, building & dev commands)
- Linting (ESLint)
- Code styling (Prettier)
- Pre-commit hooks with Husky (lint-staged for ESLint & Prettier, conventional commits)
- GitHub Actions (ESLint PR comments)
- Dockerfile

Some configs are highly opinionated (such as renovate) and set for our organizational needs, you might want to go through them first.

What is not included:

- Versioning
- Releasing
- Testing
- Environment variables/configs

# Setup

Create a new GitHub repo from this template.

Clone the project locally:

```bash
  git clone https://github.com/kordis-leitstelle/node-ts.git
```

Go to the project directory:

```bash
  cd node-ts
```

Install dependencies:

```bash
  npm i
```

- If you want to use renovates automerge for _< major_ dependency updates:
  1. In the GitHub repository settings, go to `Option` and activate at least `Allow auto-merge` and `Automatically delete head branches`
     image.
  2. In the GitHub repository settings, go to `Branches` and add a branch protection rule for your main branch. Activate `Require status checks to pass before merging` and `Require branches to be up to date before merging`.
- See if configs fit your requirements.
- Check if your target platform supports the language targets and configurations in the `tsconfig`. The targets are set to be 100% compatible with Node v16 (ES2021, ESM...)

## Run Locally

Start the developing script:

```bash
  npm run start:dev
```

## Links

- https://www.conventionalcommits.org/en/v1.0.0/#summary
- https://docs.renovatebot.com/configuration-options/
- https://eslint.org/docs/user-guide/configuring/
- https://prettier.io/docs/en/configuration.html
- https://github.com/CatChen/eslint-suggestion-action
