# Loads `MyList.span/1`
Code.require_file("lists_and_recursion_4.exs", "chapter_7")

# Loads `MyEnum.all?/2`
Code.require_file("lists_and_recursion_5.exs", "chapter_10")

defmodule MyNewList do
  def primes(n) do
    for x <- MyList.span(2, n), x > 1, prime?(x), do: x
  end

  defp prime?(2), do: true
  defp prime?(n) do
    MyEnum.all?(MyList.span(2, n - 1), &(rem(n, &1) != 0))
  end
end

IO.puts "Prime numbers using `MyList.span/1`:"
IO.inspect MyNewList.primes(21)
