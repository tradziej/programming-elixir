# Exercise: ListsAndRecursion-2

defmodule MyList do
  def max([]), do: nil
  def max(list) when is_list(list), do: _max(tl(list), hd(list))

  defp _max([], max), do: max
  defp _max([head | tail], max) when head < max, do: _max(tail, max)
  defp _max([head | tail], max) when head >= max, do: _max(tail, head)
end

IO.puts MyList.max([1, 2, 3, 4, 5]) == 5
IO.puts MyList.max([9, 1, 99, 50]) == 99
IO.puts MyList.max([5]) == 5
IO.puts MyList.max([]) == nil
