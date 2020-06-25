defmodule ExercisesProgrammingElixir.KnowWhatImDoingTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.KnowWhatImDoing

  test ".run raises exception on passing invalid path" do
    assert_raise(RuntimeError, "invalid path", fn ->
      KnowWhatImDoing.run()
    end)
  end
end
