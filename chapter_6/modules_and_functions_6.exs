defmodule Chop do
  def guess(actual, low..high) do
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}?"
    _guess(actual, guess, low..high)
  end

  defp _guess(actual, actual, _) do
    IO.puts "Yes, it is: #{actual}"
    actual
  end
  defp _guess(actual, guess, _low..high) when guess < actual do
    guess(actual, guess + 1..high)
  end
  defp _guess(actual, guess, low.._high) when guess > actual do
    guess(actual, low..guess - 1)
  end
end

Chop.guess(273, 1..1000)
Chop.guess(713, 1..1000)
