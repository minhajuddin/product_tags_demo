defmodule ProductTagsDemo.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :name, :string

      timestamps()
    end

    create index("tags", [:name], unique: true)
  end
end
