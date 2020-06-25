defmodule ExercisesProgrammingElixir.KnowWhatImDoing do
  def run do
    file = ok! File.open("./invalid-path.csv")

    file
  end

  defp ok!({:ok, result}) do
    result
  end
  defp ok!(_) do
    raise RuntimeError, "invalid path"
  end
end
