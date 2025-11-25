# syntax=docker/dockerfile:1.4

FROM node:lts-slim AS development

# Create app directory
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
