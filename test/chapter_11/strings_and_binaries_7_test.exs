defmodule ExercisesProgrammingElixir.SalesParserTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.SalesParser

  test ".parser receives CSV filepath and returns calculated taxes amount" do
    assert(match?([
      [{:id, 123 }, _, _, {:total_amount, 107.5}],
      [{:id, 124 }, _, _, {:total_amount, 35.5}],
      [{:id, 125 }, _, _, {:total_amount, 25.92}],
      [{:id, 126 }, _, _, {:total_amount, 48.384}],
      [{:id, 127 }, _, _, {:total_amount, 26.875}],
      [{:id, 128 }, _, _, {:total_amount, 10.0}],
      [{:id, 129 }, _, _, {:total_amount, 102.0}],
      [{:id, 130 }, _, _, {:total_amount, 53.75}]
    ], SalesParser.parse("./test/fixtures/orders.csv")))
  end
end
