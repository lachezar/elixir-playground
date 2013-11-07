defmodule CalcChange do

  def calc(n) when n >= 0 do
    calc(n, [], [1000, 500, 100, 50, 20, 10, 5, 1])
  end

  def calc(0, l, _) do
    :lists.reverse l
  end

  def calc(n, l, [h | money]) when h <= n do
    calc(n - h, [h | l], [h | money])
  end

  def calc(n, l, [h | money]) when h > n do
    calc(n, l, money)
  end

end
