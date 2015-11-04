FROM joakimk/rpi-elixir:1.1.1
MAINTAINER Joakim Kolsjö <joakim.kolsjo<at>gmail.com>

# Latest at time of build
ENV ELIXIR_VERSION=1.1.1 \
    APP_GIT_COMMIT=fe40ef85abd5e52c157b38fbc2eb8082c7fdc455

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    MIX_ENV=prod \
    PORT=4000

RUN apt-get update && apt-get install -y git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/chrismccord/phoenix_chat_example.git /app \
  && cd /app \
  && git checkout ${APP_GIT_COMMIT} \
  && yes Y | mix local.hex \
  && yes Y | mix local.rebar \
  && mix deps.get \
  && mix compile

COPY ./prod.exs /app/config/prod.exs
COPY ./docker-entrypoint.sh /

EXPOSE 4000

WORKDIR /app

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["server"]
