FROM node:lts-bullseye-slim as dev

COPY ./ /app
WORKDIR /app

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "dev"]

FROM node:lts-bullseye-slim as prod

COPY ./ /app
WORKDIR /app

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]