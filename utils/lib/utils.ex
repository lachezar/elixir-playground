defmodule Utils do

  # reverse list
  def reverse([], r) do
    r
  end

  def reverse([h | t], r) do
    reverse(t, [h | r])
  end

  def reverse(l) do
    reverse(l, [])
  end

  # flatten list
  def flatten(l) do
    l |> flatten([]) |> reverse
  end

  def flatten([], r) do
    r
  end

  def flatten([h | t], r) when not is_list(h) do
    flatten(t, [h | r])
  end

  def flatten([h | t], r) when is_list(h) do
    flatten(t, h |> flatten([]) |> concat(r))
  end

  # concat lists
  def concat(l, r) do
    l |> concat(r, []) |> reverse 
  end

  def concat([], [h | r], t) do
    concat([], r, [h | t])
  end

  def concat([], [], t) do
    t
  end

  def concat([h | l], r, t) do
    concat(l, r, [h | t])
  end
end
