defmodule ProductTagsDemo.Core.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :description, :string
    field :name, :string
    many_to_many :tags, ProductTagsDemo.Core.Tag, join_through: "products_tags"

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
