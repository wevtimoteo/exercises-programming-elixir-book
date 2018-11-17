defmodule MyList do
  def flatten([]) do
    []
  end
  def flatten(list) do
    _flatten(list, [])
  end
  def _flatten([], flat_list), do: flat_list
  def _flatten([head | tail], flat_list) when is_list(head) do
    _flatten(head, _flatten(tail, flat_list))
  end
  def _flatten([head | tail], flat_list) do
    [head | _flatten(tail, flat_list)]
  end
end

IO.puts "MyList.flatten"
IO.puts "---"
IO.inspect MyList.flatten([1, [2, 3]])
IO.inspect MyList.flatten([1, [2, 3, [4]], 5, [[[6]]]])
