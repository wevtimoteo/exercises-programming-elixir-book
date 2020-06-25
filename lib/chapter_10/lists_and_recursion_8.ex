defmodule ExercisesProgrammingElixir.SalesCalculator do
  @tax_rates [
    NC: 0.075,
    TX: 0.08
  ]

  def calculate(orders) do
    for order <- orders do
      ship_to = @tax_rates[order[:ship_to]]

      if is_nil(ship_to) do
        append_total_amount(order, order[:net_amount])
      else
        apply_tax(order, order[:ship_to])
      end
    end
  end

  defp apply_tax(order, ship_to) do
    net_amount = order[:net_amount]
    total_amount = net_amount + (net_amount * @tax_rates[ship_to])

    append_total_amount(order, total_amount)
  end

  defp append_total_amount(order, total_amount) do
    order ++ [
      total_amount: total_amount
    ]
  end
end
