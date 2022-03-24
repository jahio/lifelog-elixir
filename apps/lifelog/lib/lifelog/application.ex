defmodule LifeLog.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      LifeLog.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: LifeLog.PubSub}
      # Start a worker by calling: LifeLog.Worker.start_link(arg)
      # {LifeLog.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: LifeLog.Supervisor)
  end
end
