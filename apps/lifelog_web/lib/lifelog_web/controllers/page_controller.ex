defmodule LifeLogWeb.PageController do
  use LifeLogWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
