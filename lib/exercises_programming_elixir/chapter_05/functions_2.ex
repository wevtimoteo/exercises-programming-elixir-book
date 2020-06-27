defmodule ExercisesProgrammingElixir.FizzBuzz do
  def fn_sentence do
    fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, c -> c
    end
  end
end
