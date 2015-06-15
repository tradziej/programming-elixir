# Exercise: ModulesAndFunctions-4

defmodule Sum do
  def of(0), do: 0
  def of(n), do: n + of(n - 1)
end

IO.puts Sum.of(0) == 0
IO.puts Sum.of(5) == 15
