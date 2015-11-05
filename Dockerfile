FROM joakimk/rpi-elixir:1.1.1
MAINTAINER Joakim Kolsjo <joakim.kolsjo<at>gmail.com>

# Latest at time of build
ENV APP_GIT_COMMIT=fe40ef85abd5e52c157b38fbc2eb8082c7fdc455

ENV MIX_ENV=prod

RUN git clone https://github.com/chrismccord/phoenix_chat_example.git /home/deploy/app \
  && cd /home/deploy/app \
  && git checkout ${APP_GIT_COMMIT} \
  && mix deps.get \
  && mix compile

COPY ./prod.exs /home/deploy/app/config/prod.exs

USER root
COPY ./docker-entrypoint.sh /
USER deploy

EXPOSE 4000

WORKDIR /home/deploy/app

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["server"]
