defmodule Parse do
  def number([?- | t]) do
    _number_digits(t, 0) * -1
  end

  def number([?+ | t]) do
    _number_digits(t, 0)
  end

  def number(str) do
    _number_digits(str, 0)
  end

  defp _number_digits([], value) do
    value
  end

  defp _number_digits([digit | t], value) when digit in '0123456789' do
    _number_digits(t, value * 10 + digit - ?0)
  end

  defp _number_digits([non_digit | _t], _value) do
    raise "Invalid digit '#{non_digit}'"
  end
end

IO.puts Parse.number('123')
IO.puts Parse.number('-123')
IO.puts Parse.number('+123')
IO.puts Parse.number('+9')
IO.puts Parse.number('+a')
