defmodule FastFib do

  def fib(1) do
    [1]
  end

  def fib(n) do
    fib([1, 1], n-1)
  end

  def fib(l, 1) do
    l
  end

  def fib([a, b | t], n) when n > 1 do
    fib([a + b, a, b | t], n-1)
  end
end

