defmodule ExercisesProgrammingElixir.Calculator do
  @digits '0123456789'
  @supported_operators '+-*/'

  defguard is_operator(value) when value in @supported_operators

  def calculate(expr) do
    _number_digits(expr, 0)
  end

  defp _number_digits([], value), do: value
  defp _number_digits([digit | tail], value) when digit in @digits do
    _number_digits(tail, value * 10 + digit - ?0)
  end
  defp _number_digits([operator | tail], value) when is_operator(operator) do
    apply(Kernel, operator_atom(operator), [value, _number_digits(tail, 0)])
  end
  defp _number_digits([_non_digit | tail], value) do
    _number_digits(tail, value)
  end

  defp operator_atom(operator) do
    String.to_atom(List.to_string([operator]))
  end
end
