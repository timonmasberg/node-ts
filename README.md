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

## Run Locally

Clone the project

```bash
  git clone https://github.com/kordis-leitstelle/node-ts.git
```

Go to the project directory

```bash
  cd node-ts
```

Install dependencies

```bash
  npm i
```

Start the developing

```bash
  npm run start:dev
```

or run with Docker.
