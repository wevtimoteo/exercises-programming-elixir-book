defmodule MyEnum do
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
  def split([element], count) do
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
  # TODOs: take
end

even_fun = fn x ->
  rem(x, 2) == 0
end

puts_fun = fn x ->
  IO.puts "--> Inside fun: #{x}"
end

IO.puts "MyEnum.all?"
IO.puts "---"
IO.inspect MyEnum.all?([], even_fun)
IO.inspect MyEnum.all?([1], even_fun)
IO.inspect MyEnum.all?([2, 4, 6], even_fun)
IO.inspect MyEnum.all?([2, 3, 4], even_fun)
IO.puts "---\n"

IO.puts "MyEnum.each"
IO.puts "---"
IO.inspect MyEnum.each([], puts_fun)
IO.inspect MyEnum.each([1], puts_fun)
IO.inspect MyEnum.each([2, 4, 6], puts_fun)
IO.inspect MyEnum.each([2, 3, 4], puts_fun)
IO.puts "---\n"

IO.puts "MyEnum.filter"
IO.puts "---"
IO.inspect MyEnum.filter([], even_fun)
IO.inspect MyEnum.filter([1], even_fun)
IO.inspect MyEnum.filter([2, 4, 6], even_fun)
IO.inspect MyEnum.filter([2, 3, 4], even_fun)
IO.puts "---\n"

IO.puts "MyEnum.split"
IO.puts "---"
IO.inspect MyEnum.split([], 2)
IO.inspect MyEnum.split([1], 2)
IO.inspect MyEnum.split([1, 2, 3], 2)
IO.inspect MyEnum.split([2, 3, 4], -1)
IO.inspect MyEnum.split([4, 6, 8], -5)
IO.puts "---\n"
