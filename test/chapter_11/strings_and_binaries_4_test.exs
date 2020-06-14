defmodule ExercisesProgrammingElixir.CalculatorTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.Calculator

  test ".calculate/1 parses single quoted string calculation returning result" do
    assert(Calculator.calculate('123 + 27') == 150)
    assert(Calculator.calculate('123 - 200') == -77)
    assert(Calculator.calculate('3 * 27') == 81)
    assert(Calculator.calculate('27 / 3') == 9)
  end
end
