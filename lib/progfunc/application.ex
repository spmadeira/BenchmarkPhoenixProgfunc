defmodule Progfunc.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Progfunc.Repo,
      # Start the Telemetry supervisor
      ProgfuncWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Progfunc.PubSub},
      # Start the Endpoint (http/https)
      ProgfuncWeb.Endpoint
      # Start a worker by calling: Progfunc.Worker.start_link(arg)
      # {Progfunc.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Progfunc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ProgfuncWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
