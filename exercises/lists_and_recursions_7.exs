# Exercise: ListsAndRecursion-7

defmodule MyList do
  def span(from, to) when from == to do
    [from]
  end

  def span(from, to) when from < to do
    [from | span(from + 1, to)]
  end

  def primes(to) when to >= 2 do
    for n <- span(2, to), prime?(n), do: n
  end

  # Private functions

  defp prime?(2) do
    true
  end

  defp prime?(n) do
    2..n-1
    |> Enum.to_list
    |> Enum.all?(&(rem(n, &1) != 0))
  end
end

IO.puts MyList.primes(10) == [2, 3, 5, 7]
