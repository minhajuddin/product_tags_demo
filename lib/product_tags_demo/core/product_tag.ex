defmodule ProductTagsDemo.Core.ProductTag do
  use Ecto.Schema

  @primary_key false
  schema "products_tags" do
    field :product_id, :id
    field :tag_id, :id

    timestamps(updated_at: false)
  end
end
