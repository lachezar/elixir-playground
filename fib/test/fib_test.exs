defmodule FibTest do
  use ExUnit.Case

  test "parallel fib with 8 numbers" do
    assert Fib.pfib([0,1,2,3,4,5,6,7]) == [1,1,2,3,5,8,13,21]
  end

  test "parallel fib with 8 big numbers" do
    assert Fib.pfib([35,36,37,38,39,40,41,42]) == [14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437]
  end
end
