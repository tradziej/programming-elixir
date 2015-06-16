# Exercise: ListsAndRecursion-0

defmodule MyList do
  def sum([]), do: 0

  def sum([head | tail]), do: head + sum(tail)
end

IO.puts MyList.sum([1, 2, 3]) == 6
IO.puts MyList.sum([11, 12, 13, 14, 15]) == 65
IO.puts MyList.sum([]) == 0
