# Exercise: ListsAndRecursion-3

defmodule MyList do
  def caesar(list, n) when is_list(list) do
    _caesar(list, n)
  end

  defp _caesar([], _n) do
    []
  end

  defp _caesar([head | tail], n) do
    [_wrap(head + n) | _caesar(tail, n)]
  end

  defp _wrap(n) when n > ?z do
    n - 26
  end

  defp _wrap(n) do
    n
  end
end

IO.puts MyList.caesar('ryvkve', 13) == 'elixir'
IO.puts MyList.caesar('tomasz radziejewski', 25) == 'snlzry9qzcyhdidvrjh'
