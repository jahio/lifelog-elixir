import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :lifelog, LifeLog.Repo,
  # database: Path.expand("../lifelog_test.db", Path.dirname(__ENV__.file)),
  # pool_size: 5,
  # pool: Ecto.Adapters.SQL.Sandbox
  database: "lifelog_test",
  username: "dev",
  password: "dev",
  hostname: "localhost"

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lifelog_web, LifeLogWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "SIkegQDoJXaq28VfJM0rVOoHlatqIbwU8B7ylCGBbzVLZhn/RhW57PyJQkQkBqjN",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :lifelog, LifeLog.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
