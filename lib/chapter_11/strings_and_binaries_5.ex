defmodule ExercisesProgrammingElixir.Centralizer do
  require Integer

  def center([]), do: ""
  def center([word]), do: word
  def center(words) do
    _center(Enum.sort(words, &(String.length(&1) >= String.length(&2))), [])
  end

  defp _center([word | tail], []) do
    _center(tail, [word], String.length(word))
  end
  defp _center([], centered_words, _max_length) do
    centered = Enum.reverse(centered_words)

    Enum.join(centered, "\n")
  end
  defp _center([word | tail], centered_words, max_length) do
    _center(tail, centered_words ++ [adjust_word(word, max_length)], max_length)
  end

  defp adjust_word(word, max_length) do
    additional_spaces = additional_spaces(word, max_length)

    "#{String.duplicate(" ", additional_spaces)}#{word}"
  end

  defp additional_spaces(word, max_length) do
    additional_spaces = ceil((max_length - String.length(word)) / 2)

    if additional_spaces > 1 do
      additional_spaces - 1
    else
      additional_spaces
    end
  end
end
