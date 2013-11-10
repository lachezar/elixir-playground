defmodule Webdemo.Mixfile do
  use Mix.Project

  def project do
    [ app: :webdemo,
      version: "0.0.1",
      dynamos: [Webdemo.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/webdemo/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo, :fib],
      mod: { Webdemo, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0-dev", github: "elixir-lang/dynamo" }, 
      { :fib, path: "../fib" }
    ]
  end
end
