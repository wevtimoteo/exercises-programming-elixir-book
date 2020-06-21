defmodule ExercisesProgrammingElixir.CentralizerTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.Centralizer

  test ".center/1 returns each string in list centered in a column" do
    assert(Centralizer.center([]) == "")
    assert(Centralizer.center(["zebra"]) == "zebra")

    assert(Centralizer.center(["cat", "zebra", "elephant"]) == """
      cat
     zebra
    elephant\
    """)

    assert(Centralizer.center(["elephant", "zebra", "cat"]) == """
      cat
     zebra
    elephant\
    """)

    assert(Centralizer.center(["dog", "zebra", "cat"]) == """
     cat
     dog
    zebra\
    """)
  end
end
