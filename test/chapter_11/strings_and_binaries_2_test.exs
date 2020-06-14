defmodule ExercisesProgrammingElixir.AnagramVerifierTest do
  use ExUnit.Case

  alias ExercisesProgrammingElixir.AnagramVerifier

  test ".anagram?/2 checks if parameters are anagrams" do
    assert(AnagramVerifier.anagram?('name', 'name'))
    assert(AnagramVerifier.anagram?('name', 'mena'))
    assert(AnagramVerifier.anagram?('foo', 'ofo'))

    refute(AnagramVerifier.anagram?('foo', 'bar'))
    refute(AnagramVerifier.anagram?('abcdef', 'eaba'))
    refute(AnagramVerifier.anagram?('foo', 'of'))
  end
end
