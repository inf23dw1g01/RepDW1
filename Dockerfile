FROM node:18.13.0-alpine3.17

# create destination directory
RUN mkdir -p /usr/src/filmesapi
WORKDIR /usr/src/filmesapi

# Update and install dependency
RUN apk update && apk upgrade
RUN apk add git
# docker-compose bash command dependency
RUN apk add bash

RUN rm -rf ./node_modules
RUN rm -rf package-lock.json

# Install app dependencies
COPY ./package.json .
RUN npm install

# Bundle app source
COPY . .

# run todosimple
CMD npm start