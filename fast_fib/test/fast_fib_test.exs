defmodule FastFibTest do
  use ExUnit.Case

  test "fib of 1" do
    assert FastFib.fib(1) == [1]
  end

  test "fib of 2" do
    assert FastFib.fib(2) == [1, 1]
  end

  test "fib of 3" do
    assert FastFib.fib(3) == [2, 1, 1]
  end

  test "fib of 5" do
    assert FastFib.fib(5) == [5, 3, 2, 1, 1]
  end

  test "fib of 8" do
    assert FastFib.fib(8) == [21, 13, 8, 5, 3, 2, 1, 1]
  end

  test "fib of 155" do
    assert FastFib.fib(40) == [102334155, 63245986, 39088169, 24157817, 14930352, 9227465, 5702887, 3524578, 2178309, 1346269, 832040, 514229, 317811, 196418, 121393, 75025, 46368, 28657, 17711, 10946, 6765, 4181, 2584, 1597, 987, 610, 377, 233, 144, 89, 55, 34, 21, 13, 8, 5, 3, 2, 1, 1]
  end
end
