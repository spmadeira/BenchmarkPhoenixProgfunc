defmodule Progfunc.Repo do
  use Ecto.Repo,
    otp_app: :progfunc,
    adapter: Ecto.Adapters.Postgres
end
