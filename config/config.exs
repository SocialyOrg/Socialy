
use Mix.Config

#config :maru, :json_library, Jason

config :socialy, Socialy.Server,
  adapter: Plug.Adapters.Cowboy2,
  plug: Socialy.API,
  scheme: :http,
  port: 8880

config :socialy,
  maru_servers: [Socialy.Server]

#import_config "#{Mix.env()}.exs"
