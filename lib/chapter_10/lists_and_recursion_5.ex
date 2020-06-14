defmodule ExercisesProgrammingElixir.MyEnum do
  def all?([], _) do
    true
  end
  def all?([head | tail], fun) do
    if !fun.(head) do
      false
    else
      all?(tail, fun)
    end
  end

  def each([], _) do
    :ok
  end
  def each([head | tail], fun) do
    fun.(head)

    each(tail, fun)
  end

  def filter([], _) do
    []
  end
  def filter([head | tail], fun) do
    if fun.(head) do
      _filter(tail, fun, [])
    else
      _filter(tail, fun, [head])
    end
  end

  defp _filter([], _, acc) do
    acc
  end
  defp _filter([head | tail], fun, acc) do
    if fun.(head) do
      _filter(tail, fun, acc)
    else
      _filter(tail, fun, acc ++ [head])
    end
  end

  def split([], _) do
    []
  end
  def split([element], _count) do
    {[element], []}
  end
  def split(enumerable, count) when count < 0 do
    reverse_count = count * -1

    if reverse_count >= length(enumerable) do
      {[], enumerable}
    else
      split(enumerable, length(enumerable) - reverse_count)
    end
  end
  def split([head | tail], count) do
    _split([head], tail, count - 1)
  end

  defp _split(enumerable, [head | tail], count) when count > 0 do
    _split(enumerable ++ [head], tail, count - 1)
  end
  defp _split(split_enum, enumerable, count) when count == 0 do
    {split_enum, enumerable}
  end

  def take([], _amount), do: []
  def take(_, 0), do: []
  def take(enumerable, amount) when amount < 0 do
    _take([], Enum.reverse(enumerable), amount * - 1)
  end
  def take(enumerable, amount) do
    _take([], enumerable, amount)
  end

  defp _take(taken, _, 0) do
    taken
  end
  defp _take(taken, [], _), do: taken
  defp _take(taken, [head | tail], amount) do
    _take(taken ++ [head], tail, amount - 1)
  end
end
