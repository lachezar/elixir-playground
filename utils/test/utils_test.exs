defmodule UtilsTest do
  use ExUnit.Case, async: true
  import Utils

  test "reverse empty list" do
    assert reverse([]) == []
  end

  test "reverse 1,2,3" do
    assert reverse([1,2,3]) == [3,2,1]
  end

  test "reverse -1,3,2,4" do
    assert reverse([-1,3,2,4]) == [4,2,3,-1]
  end

  test "flatten flatted list" do
    assert flatten([1,2,3]) == [1,2,3]
  end

  test "flatten nested list" do
    assert flatten([[], [1,2], [1,[2,3,[4],6]], 5]) == [1,2,1,2,3,4,6,5]
  end

  test "my concat" do
    assert concat([1,2], [2,3,4]) == [1,2,2,3,4]
  end

  test "my concat empty lists" do
    assert concat([], []) == []
  end

  test "my concat empty left" do
    assert concat([], [2,3,4]) == [2,3,4]
  end

  test "my concat empty right" do
    assert concat([1,2,4], []) == [1,2,4]
  end
end
