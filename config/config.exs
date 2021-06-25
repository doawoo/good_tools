# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :good_tools,
  ecto_repos: [GoodTools.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :good_tools, GoodToolsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U2hyIh21V/fhBhz9YkwUkwuTNfcWutEcSS5VQMUtVY2lJuADh6VB6XNvMjss15Im",
  render_errors: [view: GoodToolsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GoodTools.PubSub,
  live_view: [signing_salt: "/Sp7MB9V"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
