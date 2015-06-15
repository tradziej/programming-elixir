# Exercise: ModulesAndFunctions

defmodule Times do
  def double(n), do: n * 2

  def triple(n), do: n * 3

  def quadruple(n), do: double(double(n))
end

IO.puts Times.double(3) == 6
IO.puts Times.triple(3) == 9
IO.puts Times.quadruple(3) == 12
