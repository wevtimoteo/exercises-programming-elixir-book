defmodule ExercisesProgrammingElixir.CentralizerTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.Centralizer

  test ".center/1 returns each string in list centered in a column" do
    assert(Centralizer.center([]) == "")
    assert(Centralizer.center(["cat", "zebra", "elephant"]) == """
      cat
     zebra
    elephant
    """)
  end
end
