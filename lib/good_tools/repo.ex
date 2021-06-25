defmodule GoodTools.Repo do
  use Ecto.Repo,
    otp_app: :good_tools,
    adapter: Ecto.Adapters.Postgres
end
