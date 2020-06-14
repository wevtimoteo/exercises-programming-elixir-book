defmodule MyList do
  @unicode_start_value ?z - ?a + 1

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n <= ?z do
    [head + n | caesar(tail, n)]
  end
  def caesar([head | tail], n) do
    [head + n - @unicode_start_value | caesar(tail, n)]
  end
end

IO.puts MyList.caesar('ryvkve', 13)
