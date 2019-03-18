# Elixir + Phoenix

FROM elixir:1.8.1-alpine

# Install debian packages
RUN apk --update add openssh
RUN apk add build-base inotify-tools

ADD . /app
COPY . /app
WORKDIR /app

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new 1.4.2
RUN mix deps.get
RUN mix do compile

EXPOSE 4000

CMD ["/app/run.sh"]
