defmodule Capuli.MixProject do
  use Mix.Project

  def project do
    [
      app: :capuli,
      version: "0.1.0",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env() == :prod,
			description: description(),
      package: package(),
      deps: deps(),
      name: "Capuli",
      source_url: "https://github.com/merongivian/capuli"
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
      {:floki, "~> 0.19.0"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib","test/fixtures"]
  defp elixirc_paths(_), do: ["lib"]


  defp description do
    """
    Declarative XML parsing library backed by Floki
    """
  end

  defp package do
    [name: :capuli,
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Jose Añasco"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/merongivian/capuli"}]
  end
end
