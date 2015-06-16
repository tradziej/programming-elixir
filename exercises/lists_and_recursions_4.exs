# Exercise: ListsAndRecursion-4

defmodule MyList do
  def span(from, to) when from == to do
    [from]
  end

  def span(from, to) when from < to do
    [from | span(from + 1, to)]
  end
end

IO.puts MyList.span(5, 10) == [5, 6, 7, 8, 9, 10]
IO.puts MyList.span(5, 5) == [5]
