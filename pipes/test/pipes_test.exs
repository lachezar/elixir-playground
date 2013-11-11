defmodule PipesTest do
  use ExUnit.Case

  test "pipes" do
    assert 5 |> Pipes.a |> Pipes.b |> Pipes.c(99) == 1
  end

  test "pipes list" do
    assert [11, 12, 13] |> Enum.map(&Pipes.c(&1, 10)) == [1, 2, 3]
  end
end
