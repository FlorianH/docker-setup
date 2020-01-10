FROM mhart/alpine-node:12
WORKDIR /code

# Install psql and bash
RUN apk update && apk add postgresql-client && apk add bash && apk add nano

# Messing around with the prompts, to allow more easy orientation
RUN echo "PS1='(docker) '" > ~/.bashrc
RUN echo "\set PROMPT1 '(docker/postgresql) '" >  ~/.psqlrc