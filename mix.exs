defmodule ExercisesProgrammingElixir.MixFile do
  use Mix.Project

  def project do
    [
      app: :exercises_programming_elixir,
      version: "0.1.0",
      elixir: "~> 1.10",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [extra_applications: [:logger]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

