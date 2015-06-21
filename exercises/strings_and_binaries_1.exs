# Exercise: StringsAndBinaries-1

printable? = fn
  (str) when is_list(str) ->
    str |> Enum.all?(&(&1 in ?\s..?~))
end


IO.puts printable?.('Sample text') == true
IO.puts printable?.('~[]') == true
IO.puts printable?.(' ') == true
IO.puts printable?.('Wórld') == false
IO.puts printable?.("Hello World")
