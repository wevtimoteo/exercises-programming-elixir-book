defmodule AnagramVerifier do
  def anagram?(word, word), do: true
  def anagram?(word_1, word_2) do
    Enum.sort(word_1) == Enum.sort(word_2)
  end
end

IO.inspect AnagramVerifier.anagram?('name', 'name')
IO.inspect AnagramVerifier.anagram?('name', 'mena')
IO.inspect AnagramVerifier.anagram?('foo', 'bar')
IO.inspect AnagramVerifier.anagram?('abcdef', 'eaba')
IO.inspect AnagramVerifier.anagram?('foo', 'of')
IO.inspect AnagramVerifier.anagram?('foo', 'ofo')
