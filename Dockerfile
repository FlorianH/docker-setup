FROM mhart/alpine-node:12
WORKDIR /code

# Install psql and bash
RUN apk update && apk add postgresql-client && apk add bash && apk add nano && apk add redis

# Messing around with the prompts, to allow more easy orientation
RUN echo "PS1='(docker) '" > ~/.bashrc
RUN echo "\set PROMPT1 '(docker/postgresql) ' \set PROMPT2 '...                 '" >  ~/.psqlrc

# Long story short: I want to always add "-h redis" to the redis-cli command, so that users don'nt have to write it themselves
RUN echo "alias redis-cli='redis-cli -h redis'" >> ~/.bashrc