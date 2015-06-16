defmodule MyList do
  def sum(list), do: _sum(list, 0)

  def _sum([], total), do: total

  def _sum([head | tail], total), do: _sum(tail, head + total)
end

IO.puts MyList.sum([1, 2, 3])
IO.puts MyList.sum([])
