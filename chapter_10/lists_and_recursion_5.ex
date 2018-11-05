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
  # TODOs: filter, split and take
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
