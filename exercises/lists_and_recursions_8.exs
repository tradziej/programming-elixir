# Exercise: ListsAndRecursion-8

defmodule Orders do
  def add_tax_rates(orders, tax_rates) when is_list(orders) and is_list(tax_rates) do
    _add_tax_rates(orders, tax_rates)
  end

  def calculate_total(net_amount, tax_rate) do
    _calculate_total(net_amount, tax_rate)
  end

  # Private functions

  defp _add_tax_rates([], _tax_rates) do
    []
  end

  defp _add_tax_rates(orders, []) do
    orders
  end

  defp _add_tax_rates(orders, tax_rates) do
    for order <- orders, do: _calculate_total_amount(order, tax_rates)
  end

  defp _calculate_total_amount(order, tax_rates) when is_list(order) do
    total_amount = calculate_total(order[:net_amount], tax_rates[order[:ship_to]])
    order ++ [total_amount: total_amount]
  end

  defp _calculate_total(net_amount, nil) do
    net_amount
  end

  defp _calculate_total(net_amount, tax_rate) do
    net_amount + tax_rate * net_amount
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
  [id: 120, ship_to: :NC, net_amount: 50.00]
]

tax_rates = [NC: 0.075, TX: 0.08]

orders_with_total_amount = Orders.add_tax_rates(orders, tax_rates)

IO.puts orders_with_total_amount == [
  [id: 123, ship_to: :NC, net_amount: 100.00, total_amount: 107.5],
  [id: 124, ship_to: :OK, net_amount: 35.50, total_amount: 35.50],
  [id: 125, ship_to: :TX, net_amount: 24.00, total_amount: 25.92],
  [id: 126, ship_to: :TX, net_amount: 44.80, total_amount: 48.384],
  [id: 127, ship_to: :NC, net_amount: 25.00, total_amount: 26.875],
  [id: 128, ship_to: :MA, net_amount: 10.00, total_amount: 10.00],
  [id: 129, ship_to: :CA, net_amount: 102.00, total_amount: 102.00],
  [id: 120, ship_to: :NC, net_amount: 50.00, total_amount: 53.75]
]
