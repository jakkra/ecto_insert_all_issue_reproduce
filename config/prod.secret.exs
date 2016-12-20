use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :ecto_problem, EctoProblem.Endpoint,
  secret_key_base: "01kF6NRyYkwdqEdyuYj6a7f/ruw4SXLB/O1SmMmpvtDhbJx06sAeU12tOWc6rL1t"

# Configure your database
config :ecto_problem, EctoProblem.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ecto_problem_prod",
  pool_size: 20
