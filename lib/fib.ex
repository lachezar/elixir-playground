defmodule Fib do
  use GenServer.Behaviour

  def init(n) do
    IO.puts "Start with #{n}"
    { :ok, n }
  end

  def handle_call({ :n, m }, _from, n) do
    IO.puts "... #{n}+#{m}=#{n+m}"    
    { :reply, n+m, m }
  end
end

