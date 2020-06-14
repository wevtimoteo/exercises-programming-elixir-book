defmodule ExercisesProgrammingElixir.PrefixerTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.Prefixer

  test ".prefix returns fn to append prefix to strings" do
    prefix = Prefixer.prefix()
    mrs = prefix.("Mrs")

    assert(mrs.("Smith") == "Mrs Smith")
    assert(prefix.("Elixir").("Rocks") == "Elixir Rocks")
  end
end
