defmodule UploadsApp.Repo do
  use Ecto.Repo,
    otp_app: :uploads_app,
    adapter: Ecto.Adapters.Postgres
end
