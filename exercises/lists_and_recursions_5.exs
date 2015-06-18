# Exercise: ListsAndRecursion-5

defmodule MyEnum do
  def all?(collection, function) when is_list(collection) do
    _all?(collection, function)
  end

  def each(collection, function) when is_list(collection) do
    _each(collection, function)
  end

  def filter(collection, function) when is_list(collection) do
    _filter(collection, function)
  end

  def split(collection, count) when is_list(collection) and count >= 0 do
    _split(collection, count, [])
  end

  def take(collection, count) when is_list(collection) and count >= 0 do
    _take(collection, count)
  end

  # Private functions

  defp _all?([], _func) do
    true
  end

  defp _all?([head | tail], func) do
    func.(head) && _all?(tail, func)
  end

  defp _each([], _func) do
    []
  end

  defp _each([head | tail], func) do
    [func.(head) | _each(tail, func)]
  end

  defp _filter([], _func) do
    []
  end

  defp _filter([head | tail], func) do
    if func.(head) do
      [head | _filter(tail, func)]
    else
      _filter(tail, func)
    end
  end

  defp _split([head | tail], counter, acc) when counter > 0 do
    _split(tail, counter - 1, [head | acc])
  end

  defp _split(collection, 0, acc) do
    {acc |> Enum.reverse, collection}
  end

  defp _split([], _counter, acc) do
    {acc |> Enum.reverse, []}
  end

  defp _take(_collection, 0) do
    []
  end

  defp _take([], _count) do
    []
  end

  defp _take([head | tail], counter) when counter > 0 do
    [head | take(tail, counter - 1)]
  end
end

require Integer

IO.puts MyEnum.all?([], &Integer.is_even/1) == true
IO.puts MyEnum.all?([2, 4, 8], &Integer.is_even/1) == true
IO.puts MyEnum.all?([2, 4, 9], &Integer.is_even/1) == false

IO.puts MyEnum.each([], &(&1 + 1)) == []
IO.puts MyEnum.each([2, 4, 8], &(&1 + 1)) == [3, 5, 9]

IO.puts MyEnum.filter([], &(rem(&1, 2) == 0)) == []
IO.puts MyEnum.filter([1, 2, 3, 4], &(rem(&1, 2) == 0)) == [2, 4]

IO.puts MyEnum.split([1, 2, 3], 0) == {[], [1, 2, 3]}
IO.puts MyEnum.split([], 2) == {[], []}
IO.puts MyEnum.split([1, 2, 3], 2) == {[1, 2], [3]}

IO.puts MyEnum.take([1, 2, 3], 2) == [1, 2]
IO.puts MyEnum.take([1, 2, 3], 0) == []
IO.puts MyEnum.take([1, 2, 3], 10) == [1, 2, 3]
