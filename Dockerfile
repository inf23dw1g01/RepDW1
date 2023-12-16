
FROM node:18.13.0-alpine3.17

RUN mkdir -p /usr/src/dw1
WORKDIR /usr/src/dw1

# Copy dependencies
COPY ./package.json .
RUN npm install

# Copy the rest of the source files into the image.
COPY . .

# Run the application.
CMD npm start