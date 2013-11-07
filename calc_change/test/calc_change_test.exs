defmodule CalcChangeTest do
  use ExUnit.Case, async: true
  import CalcChange

  test "1:-" do
    assert calc(1) == [1]
  end

  test "4:-" do
    assert calc(4) == [1, 1, 1, 1]
  end

  test "5:-" do
    assert calc(5) == [5]
  end

  test "7:-" do
    assert calc(7) == [5, 1, 1]
  end

  test "11:-" do
    assert calc(11) == [10, 1]
  end

  test "18:-" do
    assert calc(18) == [10, 5, 1, 1, 1]
  end

  test "25:-" do
    assert calc(25) == [20, 5]
  end

  test "99:-" do
    assert calc(99) == [50, 20, 20, 5, 1, 1, 1, 1]
  end

  test "160 cent" do
    assert calc(160) == [100, 50, 10]
  end

  test "5632:-" do
    assert calc(5632) == [1000, 1000, 1000, 1000, 1000, 500, 100, 20, 10, 1, 1]
  end

  test "1678:-" do
    assert calc(1678) == [1000, 500, 100, 50, 20, 5, 1, 1, 1]
  end

  test "1000:-" do
    assert calc(1000) == [1000]
  end

  test "1600:-" do
    assert calc(1600) == [1000, 500, 100]
  end

  test "0:-" do
    assert calc(0) == []
  end
end
