defmodule UploadsAppWeb.PageController do
  use UploadsAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
