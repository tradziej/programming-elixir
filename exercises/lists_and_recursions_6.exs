# Exercise: ListsAndRecursion-6

defmodule MyEnum do
  def flatten(collection) when is_list(collection) do
    _flatten(collection)
  end

  # Private functions

  defp _flatten([]) do
    []
  end

  defp _flatten([head | tail]) do
    _flatten(head) ++ _flatten(tail)
  end

  defp _flatten(head) do
    [head]
  end
end

IO.puts MyEnum.flatten([]) == []
IO.puts MyEnum.flatten([1, [2, 3, [4]], 5, [[[6]]]]) == [1, 2, 3, 4, 5, 6]
