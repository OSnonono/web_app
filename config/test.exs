import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :web_app, WebAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "7XEzKCGczWyBvRIRAGpKMjH+MS8eIMSPXnzLdkYU2/wZan5+5jIjnOI+1kV4KxEm",
  server: false

# In test we don't send emails.
config :web_app, WebApp.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
