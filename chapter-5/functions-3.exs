fizzbuzz_sentence = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizzbuzz = fn
  n -> fizzbuzz_sentence.(rem(n, 3), rem(n, 5), n)
end

Enum.map(10..16, &fizzbuzz.(&1))
|> IO.inspect
