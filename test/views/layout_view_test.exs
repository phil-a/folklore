defmodule Folklore.LayoutViewTest do
  use Folklore.ConnCase, async: true
  import Folklore.Factory
  alias Folklore.LayoutView

  setup do
    role = insert(:role, admin: false)
    user = insert(:user, role: role)
    {:ok, conn: build_conn(), user: user}
  end

  test "current user returns the user in the session", %{conn: conn, user: user} do
    conn = post conn, session_path(conn, :create), user: %{username: user.username, password: user.password}
    assert LayoutView.current_user(conn)
  end

  test "current user returns nothing if there is no user in the session", %{conn: conn, user: user} do
    conn = delete conn, session_path(conn, :delete, user)
    refute LayoutView.current_user(conn)
  end
end
