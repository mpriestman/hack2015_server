defmodule Hack2015Server.PageController do
  use Hack2015Server.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
