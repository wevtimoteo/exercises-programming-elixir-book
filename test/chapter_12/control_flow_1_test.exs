defmodule ExercisesProgrammingElixir.FizzBuzzCaseTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.FizzBuzzCase

  test ".sentence receives params and applies book FizzBuzz logic" do
    assert(FizzBuzzCase.sentence(0, 0, 1) == "FizzBuzz")
    assert(FizzBuzzCase.sentence(0, 2, 1) == "Fizz")
    assert(FizzBuzzCase.sentence(1, 0, 2) == "Buzz")
    assert(FizzBuzzCase.sentence(1, 2, 0) == 0)
  end
end
