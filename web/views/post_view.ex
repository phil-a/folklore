defmodule Folklore.PostView do
  use Folklore.Web, :view

  def markdown(body) do
    body
    |> Earmark.to_html
    |> raw
  end

end
