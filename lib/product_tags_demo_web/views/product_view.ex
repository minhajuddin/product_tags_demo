defmodule ProductTagsDemoWeb.ProductView do
  use ProductTagsDemoWeb, :view

  def tag_input(form, field, opts \\ []) do
    import Phoenix.HTML.Form
    tags = input_value(form, field)
    text_input(form, field, value: tags_to_text(tags))
  end

  # the association is not loaded for new records
  defp tags_to_text(%Ecto.Association.NotLoaded{}), do: nil

  defp tags_to_text(tags) do
    tags
    |> Enum.map(fn t -> t.name end)
    |> Enum.join(", ")
  end
end
