defmodule ExercisesProgrammingElixir.ASCIIVerifier do
  @space_ascii_code 32
  @tilde_ascii_code 126

  def verify(sentence) when is_list(sentence) do
    Enum.all?(sentence, &(&1 >= @space_ascii_code && &1 <= @tilde_ascii_code))
  end
  def verify(_) do
    false
  end
end
