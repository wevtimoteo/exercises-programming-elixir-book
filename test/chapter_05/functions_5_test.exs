defmodule ExercisesProgrammingElixir.FizzBuzzTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.FizzBuzz

  test ".fn_sentence returns a function to check FizzBuzz" do
    fn_sentence = FizzBuzz.fn_sentence

    assert(fn_sentence.(0, 0, 1) == "FizzBuzz")
    assert(fn_sentence.(0, 2, 1) == "Fizz")
    assert(fn_sentence.(1, 0, 2) == "Buzz")
    assert(fn_sentence.(1, 2, 0) == 0)
  end
end
