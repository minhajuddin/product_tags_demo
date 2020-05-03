defmodule ProductTagsDemoWeb.PageController do
  use ProductTagsDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
