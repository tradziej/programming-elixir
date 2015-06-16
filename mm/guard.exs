defmodule Guard do
  def what_is(x) when is_number(x), do: IO.puts "#{x} is a number"

  def what_is(x) when is_list(x), do: IO.puts "#{inspect(x)} is a list"

  def what_is(x) when is_atom(x), do: IO.puts "#{x} is an atom"
end

Guard.what_is(99)
Guard.what_is(:cat)
Guard.what_is([99, 97, 116])
