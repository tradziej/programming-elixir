# Exercise: Functions-4

prefix = fn
  prefix ->
    fn
      content ->
        "#{prefix} #{content}"
    end
end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith") == "Mrs Smith"

IO.puts prefix.("Elixir").("Rocks") == "Elixir Rocks"
