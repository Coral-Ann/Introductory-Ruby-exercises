# Write a method that:
#   * If the number is divisible by 3, replace the number with `Fizz`.
#   * If the number is divisible by 5, replace the number with `Buzz`
#   * If the number is divisible by 3 and 5, replace the number with `FizzBuzz`.
#   * If the number is divisible by neither 3 or 5, keep the number.

def fizzbuzz(n)
  n % 3 == 0 && n % 5 == 0 ? "FizzBuzz" : n % 3 == 0 ? "Fizz" : n % 5 == 0 ? "Buzz" : n
end

puts fizzbuzz(1)
puts fizzbuzz(3)
puts fizzbuzz(5)
puts fizzbuzz(15)