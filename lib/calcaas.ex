defmodule Calcaas do

  def fib(m) do
    receive do
      {:next, {pid, n}} ->
        IO.puts "... #{n + m}"
        pid <- {:answer, n + m}
    end
    fib(n)
  end

  def ask(n, fib_pid) do
    IO.puts "What goes after #{n}"
    fib_pid <- {:next, {self(), n}}
    receive do
      {:answer, m} -> n = m       
    end
    ask(n, fib_pid)
  end

  def start_fib do
    pid = spawn(__MODULE__, :fib, [0])
    :global.register_name(:fib, pid)
  end

  def start_curiosity do
    fib_pid = :global.whereis_name(:fib)
    spawn(__MODULE__, :ask, [1, fib_pid]) 
  end
end

