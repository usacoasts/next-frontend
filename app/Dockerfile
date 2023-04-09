FROM node:lts-bullseye-slim as dev

WORKDIR /app
COPY ./ /app

RUN yarn

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["yarn", "dev"]

FROM node:lts-bullseye-slim as prod

WORKDIR /app
COPY ./ /ap

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]