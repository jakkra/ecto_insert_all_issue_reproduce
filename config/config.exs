# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ecto_problem,
  ecto_repos: [EctoProblem.Repo]

# Configures the endpoint
config :ecto_problem, EctoProblem.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A1lB+V1QCwrMM9MVVQ4SL7frWqwiBQx79Hn068ig0qVQGJgt9czfhz1YmKRmRsEz",
  render_errors: [view: EctoProblem.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EctoProblem.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :phoenix, :generators,
  migration: true,
  binary_id: false
