# Exercise: ListsAndRecursion-0

defmodule MyList do
  def sum(list) when is_list(list) do
    _sum(list)
  end

  def sum_acc(list) when is_list(list) do
    _sum_acc(list, 0)
  end

  # Private functions

  defp _sum([]) do
    0
  end

  defp _sum([head | tail]) do
    head + _sum(tail)
  end

  defp _sum_acc([], acc) do
    acc
  end

  defp _sum_acc([head | tail], acc) do
    _sum_acc(tail, head + acc)
  end
end

IO.puts MyList.sum([]) == 0
IO.puts MyList.sum([1, 2, 3]) == 6
IO.puts MyList.sum([11, 12, 13, 14, 15]) == 65

IO.puts MyList.sum_acc([]) == 0
IO.puts MyList.sum_acc([1, 2, 3]) == 6
IO.puts MyList.sum_acc([11, 12, 13, 14, 15]) == 65
