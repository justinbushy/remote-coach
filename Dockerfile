FROM elixir:latest

RUN apt-get update && \
  apt-get install -y postgresql-client

RUN mkdir /app
COPY ./remote_coach /app
WORKDIR /app

RUN mix local.hex --force

RUN mix do compile

CMD ["/app/entrypoint.sh"]