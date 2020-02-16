use Mix.Config

# Configure your database
config :remote_coach, RemoteCoach.Repo,
  username: "postgres",
  password: "postgres",
  database: "remote_coach_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :remote_coach, RemoteCoachWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
