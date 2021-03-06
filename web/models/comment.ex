defmodule Folklore.Comment do
  use Folklore.Web, :model

  schema "comments" do
    field :author, :string
    field :body, :string
    field :approved, :boolean, default: false
    belongs_to :post, Folklore.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:author, :body, :approved])
    |> validate_required([:author, :body, :approved])
  end
end
