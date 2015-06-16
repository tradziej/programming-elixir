# Exercise: ModulesAndFunctions-6
# I'm thinking of a number between 1 and 1000...

defmodule Chop do
  def guess(actual, from..to) do
    guessed = div(from + to, 2)
    IO.puts "Is it #{guessed}"
    _guess(actual, from..to, guessed)
  end

  defp _guess(actual, _range, guessed) when actual == guessed do
    IO.puts "#{actual}"
  end

  defp _guess(actual, _from..to, guessed) when guessed < actual do
    guess(actual, (guessed + 1)..to)
  end

  defp _guess(actual, from..to_, guessed) when guessed > actual do
    guess(actual, from..(guessed - 1))
  end
end

Chop.guess(273, 1..1000)
