defmodule Folklore.UserTest do
  use Folklore.ModelCase

  alias Folklore.User

  @valid_attrs %{email: "test@test.com", password: "123456", password_confirmation: "123456", username: "test"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
