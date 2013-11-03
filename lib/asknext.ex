defmodule AskNext do

  def start(pid) do
    call(1, pid)
  end

  def call(n, pid) do
    IO.puts " - What goes after #{n}?"
    next_n = :gen_server.call(pid, {:n, n})
    call(next_n, pid)
  end
end

