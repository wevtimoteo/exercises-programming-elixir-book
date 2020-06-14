defmodule ExercisesProgrammingElixir.AnagramVerifier do
  def anagram?(word, word), do: true
  def anagram?(word_1, word_2) do
    Enum.sort(word_1) == Enum.sort(word_2)
  end
end
