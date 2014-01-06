defmodule BookExercises do
  
  def fizzbuzz(0, 0, _c) do
    "FizzBuzz"
  end

  def fizzbuzz(0, _b, _c) do
    "Fizz"
  end

  def fizzbuzz(_a, 0, _c) do
    "Buzz"
  end

  def fizzbuzz(_a, _b, c) do
    c
  end

  def fizzbuzzbar(n) do
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  def map([], _f, r) do
    r
  end

  def map([h | t], f, r // []) do
    map(t, f, r ++ [f.(h)])
  end
  
  def sum([]) do
    0
  end

  def sum([h | t]) do
    h + sum(t)
  end

  def mapsum(l, f) do
    l |> map(f) |> sum
  end

  def maxx([h | t]) do
    maxx(t, h)
  end

  def maxx([], m) do
    m
  end

  def maxx([h | t], m) when h > m do
    maxx(t, h)
  end
 
  def maxx([h | t], m) when h <= m do
    maxx(t, m)
  end
  
  def strprefix(s) do
    &(s <> " " <> &1)
  end

  def gcd(x, 0) do
    x
  end

  def gcd(x, y) do
    gcd(y, rem(x, y))
  end

  def guess(x, x..x) do
    x
  end

  def guess(x, s..e) when x in s..e-div(e-s+1, 2) do
    IO.puts "Is it in #{s}..#{e-div(e-s+1, 2)}"
    guess(x, s..e-div(e-s+1, 2))
  end

  def guess(x, s..e) when x in s+div(e-s+1, 2)..e do
    IO.puts "Is it in #{s+div(e-s+1, 2)}..#{e}"
    guess(x, s+div(e-s+1, 2)..e)
  end
  
  def all?([]) do
    true
  end

  def all?([h | t]) do
    if not h do
      false
    else
      all?(t)
    end
  end

  def filter(l, f) do
    filter(l, f, [])
  end

  def filter([], _f, r) do
    r
  end

  def filter([h | t], f, r) do
    if f.(h) do
      r = r ++ [h]
    end
    filter(t, f, r)
  end

  def span(from, to) do
    span(from, to, from)
  end

  def span(_from, to, to) do
    [to]
  end

  def span(from, to, i) do
    [i] ++ span(from, to, i+1)
  end

  def prime(2), do: [2]
  def prime(3), do: [2, 3]
  def prime(4), do: [2, 3]

  def prime(n) do
    [2, 3] ++ lc x inlist span(5, n), Enum.empty?(lc t inlist span(2, div(x, 2)), rem(x, t) == 0, do: t), do: x
  end
end
