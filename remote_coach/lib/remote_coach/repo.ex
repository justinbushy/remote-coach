defmodule RemoteCoach.Repo do
  use Ecto.Repo,
    otp_app: :remote_coach,
    adapter: Ecto.Adapters.Postgres
end
