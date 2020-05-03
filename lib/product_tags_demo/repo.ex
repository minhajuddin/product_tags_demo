defmodule ProductTagsDemo.Repo do
  use Ecto.Repo,
    otp_app: :product_tags_demo,
    adapter: Ecto.Adapters.Postgres
end
