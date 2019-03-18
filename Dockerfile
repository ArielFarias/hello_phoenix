# Elixir + Phoenix

FROM aportnov/rpi-phoenix

ADD . /app

# Install Phoenix packages
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new 1.4.2

EXPOSE 4000

WORKDIR /app

ENTRYPOINT ["./run.sh"]
CMD ["server"]
