fizzbuzz_sentence = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts "With zero for all args: #{fizzbuzz_sentence.(0, 0, 0)}"
IO.puts "With zero for first arg: #{fizzbuzz_sentence.(0, 1, 2)}"
IO.puts "With zero for second arg: #{fizzbuzz_sentence.(1, 0, 2)}"
IO.puts "With zero for second arg: #{fizzbuzz_sentence.(1, 2, 3)}"
