defmodule Hack2015Server.PageControllerTest do
  use Hack2015Server.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
