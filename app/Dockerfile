FROM node:lts-bullseye-slim as dev

WORKDIR /app
COPY ./ /app

RUN yarn

EXPOSE 3000

CMD ["yarn", "dev"]

FROM node:lts-bullseye-slim as prod

WORKDIR /app
COPY ./ /app

RUN yarn
# RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]