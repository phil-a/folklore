defmodule Folklore.PageController do
  use Folklore.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
