defmodule Folklore.RoleCheckerTest do
  use Folklore.ModelCase
  import Folklore.Factory
  alias Folklore.RoleChecker

  test "is_admin? is true when use has an admin role" do
    role = insert(:role, admin: true)
    user = insert(:user, role: role)
    assert RoleChecker.is_admin?(user)
  end

  test "is_admin? is false when user does not have an admin role" do
    role = insert(:role, admin: false)
    user = insert(:user, role: role)
    refute RoleChecker.is_admin?(user)
  end
end
