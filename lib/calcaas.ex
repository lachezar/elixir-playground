defmodule Calcaas do

  @behavior :application
  def start do
    {:ok, pid} = :gen_server.start_link(Fib, 0, [])
    AskNext.start(pid)
  end
end

