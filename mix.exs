defmodule Socialy.MixProject do

  use Mix.Project

  def project do
    [
      app: :socialy,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :maru],
      mod: {Socialy.Application, []}
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:maru, "~> 0.13"},
      {:cowboy, "~> 2.7"},
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.2"},
    ]
  end

end
