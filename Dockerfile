ARG NODE_VERSION="21"
ARG DIST_ENTRY_FILENAME="index.js"
ARG EXPOSE_PORT

FROM node:${NODE_VERSION} as build

WORKDIR /usr/src/app
COPY package*.json /usr/src/app/
COPY tsconfig*.json /usr/src/app/
COPY src/ /usr/src/app/src

RUN npm ci --ignore-scripts
RUN npm run build:release
RUN npm prune --production

FROM node:${NODE_VERSION}-alpine
RUN apk add dumb-init

ENV NODE_ENV production

USER node
WORKDIR /usr/src/app

COPY --chown=node:node --from=build /usr/src/app/node_modules /usr/src/app/node_modules
COPY --chown=node:node --from=build /usr/src/app/dist /usr/src/app/

EXPOSE ${EXPOSE_PORT}

ENV APP_EXEC_REL_PATH=./${DIST_ENTRY_FILENAME}
CMD dumb-init node ${APP_EXEC_REL_PATH}
