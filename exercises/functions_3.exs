# Exercise: Functions-3

fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> "#{a}"
end

fizzbuzz_result = fn
  n -> fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

Enum.map(10..16, fn n -> IO.puts fizzbuzz_result.(n) end)
