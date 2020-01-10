FROM mhart/alpine-node:12
WORKDIR /code

RUN apk update && apk add postgresql-client

RUN echo "Hello! :)"