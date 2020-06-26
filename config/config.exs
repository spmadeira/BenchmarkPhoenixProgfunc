# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :progfunc,
  ecto_repos: [Progfunc.Repo]

# Configures the endpoint
config :progfunc, ProgfuncWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DFtqAoGqUczK5b41rUtFneVstWG7o9weV4qXZt2mcU8GQqNdYZz56x0kowldf1KV",
  render_errors: [view: ProgfuncWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Progfunc.PubSub,
  live_view: [signing_salt: "RDJcBpZ1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
