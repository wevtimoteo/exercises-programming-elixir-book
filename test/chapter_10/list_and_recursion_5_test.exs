defmodule ExercisesProgrammingElixir.MyEnumTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.MyEnum

  test ".all?/2 checks if all elements in list returns true by given function" do
    assert(MyEnum.all?([], even_fun()))
    assert(MyEnum.all?([2, 4, 6], even_fun()))

    refute(MyEnum.all?([1], even_fun()))
    refute(MyEnum.all?([2, 3, 4], even_fun()))
  end

  test ".each/2 runs given function for every element in list" do
    # TODO: Implement behaviour and define expectations
    assert(MyEnum.each([], fetch_info()) == :ok)
    assert(MyEnum.each([1], fetch_info()) == :ok)
    assert(MyEnum.each([2, 4, 6], fetch_info()) == :ok)
    assert(MyEnum.each([2, 3, 4], fetch_info()) == :ok)
  end

  test ".filter/2 returns new list where elements in list match given function" do
    assert(MyEnum.filter([], even_fun()) == [])
    assert(MyEnum.filter([1], even_fun()) == [1])
    assert(MyEnum.filter([2, 4, 6], even_fun()) == [])
    assert(MyEnum.filter([2, 3, 4], even_fun()) == [3])
  end

  test ".split/2 splits list limited by given quantity" do
    assert(MyEnum.split([], 2) == [])
    assert(MyEnum.split([1], 2) == {[1], []})
    assert(MyEnum.split([1, 2, 3], 2) == {[1, 2], [3]})
    assert(MyEnum.split([2, 3, 4], -1) == {[2, 3], [4]})
    assert(MyEnum.split([4, 6, 8], -5) == {[], [4, 6, 8]})
  end

  test ".take/2 takes n elements from list" do
    assert(MyEnum.take([], 2) == [])
    assert(MyEnum.take([1], 2) == [1])
    assert(MyEnum.take([1, 2, 3], 2), [1, 2])
    assert(MyEnum.take([2, 3, 4], -1), [4])
    assert(MyEnum.take([4, 6, 8], -5), [8, 6, 4])
  end

  defp even_fun do
    fn x ->
      rem(x, 2) == 0
    end
  end

  defp fetch_info do
    fn x ->
      "--> Inside fun: #{x}"
    end
  end
end
