defmodule ExercisesProgrammingElixir.Capitalizer do
  def capitalize_sentences(sentence), do: _capitalize_sentences(String.split(sentence, ". "), [])

  defp _capitalize_sentences([], capitalized_sentence) do
    Enum.reverse(capitalized_sentence)
    |> Enum.join(". ")
  end
  defp _capitalize_sentences([head | tail], capitalized_sentence) do
    _capitalize_sentences(tail, [String.capitalize(head) | capitalized_sentence])
  end
end
