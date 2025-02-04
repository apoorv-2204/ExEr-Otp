defmodule Upnp.MixProject do
  use Mix.Project

  def project do
    [
      app: :upnpe,
      version: "0.1.0",
      elixir: "~> 1.18.2",
      config_path: "config/config.exs",
      build_path: "_build",
      deps_path: "deps",
      lockfile: "mix.lock",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {UPNPE.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sweet_xml, "~> 0.7.5"},
      {:httpoison, "~> 2.2"}
    ]
  end
end
