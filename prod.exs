use Mix.Config

config :chat, Chat.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: "example.com"],
  check_origin: false # <- added to make this docker image work

config :logger, level: :info

import_config "prod.secret.exs"
