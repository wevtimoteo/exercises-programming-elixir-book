defmodule ExercisesProgrammingElixir.FizzBuzzTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.FizzBuzz

  test ".fizzbuzz_sentence returns according with args" do
    fizzbuzz_sentence = FizzBuzz.fn_sentence()

    assert(fizzbuzz_sentence.(0, 0, 0) == "FizzBuzz")
    assert(fizzbuzz_sentence.(0, 1, 2) == "Fizz")
    assert(fizzbuzz_sentence.(1, 0, 2) == "Buzz")
    assert(fizzbuzz_sentence.(1, 2, 3) == 3)
  end
end
