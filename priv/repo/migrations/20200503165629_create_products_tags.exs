defmodule ProductTagsDemo.Repo.Migrations.CreateProductsTags do
  use Ecto.Migration

  def change do
    create table(:products_tags, primary_key: false) do
      add :product_id, references(:products, on_delete: :nothing), primary_key: true
      add :tag_id, references(:tags, on_delete: :nothing), primary_key: true
    end

    create index(:products_tags, [:product_id])
    create index(:products_tags, [:tag_id])
  end
end
