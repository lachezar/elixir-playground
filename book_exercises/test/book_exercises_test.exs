defmodule BookExercisesTest do
  use ExUnit.Case
  import BookExercises

  test "fizzbuzz" do
    assert fizzbuzz(0,0,0) == "FizzBuzz"
    assert fizzbuzz(1,0,0) == "Buzz"
    assert fizzbuzz(0,1,0) == "Fizz"
    assert fizzbuzz(1,1,"hi") == "hi"

    assert fizzbuzzbar(10) == "Buzz"
    assert fizzbuzzbar(11) == 11
    assert fizzbuzzbar(12) == "Fizz"
    assert fizzbuzzbar(13) == 13
    assert fizzbuzzbar(14) == 14
    assert fizzbuzzbar(15) == "FizzBuzz"
    assert fizzbuzzbar(16) == 16
  end

  test "sum" do
    assert sum([]) == 0
    assert sum([1,2,3]) == 6
    assert sum([-5,4,2]) == 1
  end

  test "strprefix" do
    assert strprefix("hello").("world") == "hello world"
  end

  test "gcd" do
    assert gcd(4, 2) == 2
    assert gcd(13, 11) == 1
  end

  test "guess" do
    assert guess(273, 1..1000) == 273
    assert guess(273, 1..1001) == 273
  end

  test "map" do
    assert map([], &(&1*&1)) == []
    assert map([1, 2, 3, 4], &(&1*&1)) == [1, 4, 9, 16]
  end

  test "mapsum" do
    assert mapsum([1, 2, 3, 4], &(&1 * &1)) == 30
    assert mapsum([], &(&1 * &1)) == 0
  end

  test "maxx" do
    assert maxx([1, 44, 99, 100, 22]) == 100
    assert maxx([-5, -10, -22]) == -5
    assert maxx([0]) == 0
  end

  test "all?" do
    assert all?([true, true, false]) == false
    assert all?([true]) == true
  end

  test "filter" do
    assert filter([1,2,3], &(rem(&1, 2) == 0)) == [2]
    assert filter([1,2,3], &(&1 > 10)) == []
    assert filter([], &(rem(&1, 2) == 0)) == []
  end

  test "span" do
    assert span(1, 3) == [1, 2, 3]
    assert span(0, 0) == [0]
    assert span(-5, -2) == [-5, -4, -3, -2]
  end

  test "prime" do
    assert prime(2) == [2]
    assert prime(4) == [2, 3]
    assert prime(5) == [2, 3, 5]
    assert prime(10) == [2, 3, 5, 7]
    assert prime(13) == [2, 3, 5, 7, 11, 13]
  end

  test "fib_stream" do
    assert Enum.take(fib_stream, 6) == [0, 1, 1, 2, 3, 5]
  end

  test "printable?" do
    assert printable? 'asd'
    assert printable? ''
    assert not printable? 'asd асд'
  end

  test "anagram?" do
    assert anagram? 'this', 'hits'
    assert not anagram? '', 'wow'
  end

  test "calculate" do
    assert calculate('13+24') == 37
    assert calculate('13-24') == -11
    assert calculate('10*14') == 140
    assert calculate('25/10') == 2.5
    assert calculate('111*0') == 0
  end

  test "center" do
    assert center(["caт", "elephant", "зebra"]) == ["  caт", " зebra", "elephant"]
  end

  test "capitalize_sentences" do
    assert capitalize_sentences("oh. a DOG. woof. ") == "Oh. A dog. Woof. "
  end
end
