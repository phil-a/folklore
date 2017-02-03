defmodule Folklore.RoleChecker do
  alias Folklore.Repo
  alias Folklore.Role

  def is_admin?(user) do
    (role = Repo.get(Role, user.role_id)) && role.admin
  end
end
