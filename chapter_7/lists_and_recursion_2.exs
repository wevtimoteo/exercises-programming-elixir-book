defmodule MyList do
  def max([x]), do: x
  def max([head | tail]) do
    _max(head, tail)
  end

  defp _max(max, []), do: max
  defp _max(max, [head | tail]) when max < head do
    _max(head, tail)
  end
  defp _max(max, [head | tail]) when max > head do
    _max(max, tail)
  end
end

IO.puts MyList.max [2, 90, 100, 4, 95]
IO.puts MyList.max [150]
