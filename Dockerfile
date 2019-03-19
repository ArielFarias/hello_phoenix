
# Elixir + Phoenix

FROM elixir:1.8.1-alpine

# Install debian packages
RUN apk --update add openssh-client
RUN apk add build-base inotify-tools

ADD . /app

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new 1.4.2

WORKDIR /app
EXPOSE 4000
