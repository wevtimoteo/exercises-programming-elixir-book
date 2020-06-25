defmodule ExercisesProgrammingElixir.SalesParser do
  alias ExercisesProgrammingElixir.SalesCalculator

  def parse(orders_filepath) do
    {:ok, contents} = File.read(orders_filepath)

    [_ | orders] = _parse(contents)

    SalesCalculator.calculate(Enum.reverse(orders))
  end

  defp _parse(contents) do
    [_ | values] = String.split(contents, "\n")

    _parse_line(values, [])
  end

  defp _parse_line([], list) do
    list
  end

  defp _parse_line([line | lines], list) do
    _parse_line(lines, [_parse_values(line) | list])
  end

  defp _parse_values("") do
  end

  defp _parse_values(line) do
    [id, ship_to, net_amount] = String.split(line, ",")

    [
      {:id, String.to_integer(id)},
      {:ship_to, String.to_atom(ship_to)},
      {:net_amount, String.to_float(net_amount)}
    ]
  end
end
