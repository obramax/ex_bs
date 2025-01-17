defmodule ExBs.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_bs,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_html, "~> 2.10"},
      {:phoenix_ecto, "~> 4.0.0", only: [:test, :dev]},
      {:ecto, "~> 3.1.7", only: [:test, :dev]}
    ]
  end
end
