defmodule Fib do

  def fib(0), do: 1
  def fib(1), do: 1
  def fib(n) when n > 1, do: fib(n-1) + fib(n-2)

  def pfib(l) do
    l |> Enum.map(&spawn_fib/1) |> Enum.map(&receive_fib/1)
  end

  def spawn_fib(n) do
    spawn(__MODULE__, :proc_fib, [n, self])
  end

  def proc_fib(n, parent) do
    parent <- {self, fib(n)}
  end

  def receive_fib(pid) do
    receive do
      {^pid, n} -> n
    end
  end
end

