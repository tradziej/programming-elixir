# Exercise: ModulesAndFunctions-5

defmodule GCD do
  def of(x, 0) when x > 0, do: x
  def of(x, y) when y > 0 and y >= 0, do: of(y, rem(x, y))
end

IO.puts GCD.of(5, 0) == 5
IO.puts GCD.of(6, 18) == 6
