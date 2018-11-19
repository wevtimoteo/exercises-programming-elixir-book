defmodule SalesCalculator do
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

orders = [
  [id: 123, ship_to: :NC, net_amount: 100.00],
  [id: 124, ship_to: :OK, net_amount: 35.50],
  [id: 125, ship_to: :TX, net_amount: 24.00],
  [id: 126, ship_to: :TX, net_amount: 44.80],
  [id: 127, ship_to: :NC, net_amount: 25.00],
  [id: 128, ship_to: :MA, net_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00],
  [id: 130, ship_to: :NC, net_amount: 50.00]
]

IO.inspect SalesCalculator.calculate(orders)
