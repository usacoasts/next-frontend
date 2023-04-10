FROM node:lts-bullseye-slim as dev

COPY /app /app
WORKDIR /app

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "dev"]

FROM node:lts-bullseye-slim as prod

COPY /app /app
WORKDIR /app

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]