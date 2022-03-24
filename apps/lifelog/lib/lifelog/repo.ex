defmodule LifeLog.Repo do
  use Ecto.Repo,
    otp_app: :lifelog,
    adapter: Ecto.Adapters.Postgres
    # @primary_key {:id, Ecto.UUID, autogenerate: true}
end
