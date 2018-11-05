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

  # TODOs: each, filter, split and take
end

even_fun = fn x ->
  rem(x, 2) == 0
end

IO.puts "MyEnum.all?"
IO.puts "---"
IO.inspect MyEnum.all?([], even_fun)
IO.inspect MyEnum.all?([1], even_fun)
IO.inspect MyEnum.all?([2, 4, 6], fn x -> rem(x, 2) == 0 end)
IO.inspect MyEnum.all?([2, 3, 4], fn x -> rem(x, 2) == 0 end)
IO.puts "---\n"
