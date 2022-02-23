FROM node:16.10.0 AS builder
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY ./ ./
RUN npx prisma generate

CMD ["bash", "-c", "yarn start:dev"]

