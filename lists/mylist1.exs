defmodule MyList do
  def square([]), do: []

  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []

  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  def map([], _func), do: []

  def map([head | tail], func), do: [func.(head) | map(tail, func)]
end

IO.inspect MyList.square([5, 6, 7])
IO.inspect MyList.add_1([5, 6, 7])
IO.inspect MyList.map([5, 6, 7], &(&1 * &1))
