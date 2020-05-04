defmodule ProductTagsDemoWeb.ProductView do
  use ProductTagsDemoWeb, :view
  import Phoenix.HTML.Form

  # if there is an error, pass the input params along
  def tag_input(form, field, opts \\ []) do
    text_input(form, field, value: tag_value(form.source, form, field))
  end

  defp tag_value(%Ecto.Changeset{valid?: false}, form, field) do
    form.params[to_string(field)]
  end

  defp tag_value(_source, form, field) do
    form
    |> input_value(field)
    |> tags_to_text
  end

  defp tags_to_text(tags) do
    tags
    |> IO.inspect(label: "tags_to_text")
    |> Enum.map(fn t -> t.name end)
    |> Enum.join(", ")
  end
end
