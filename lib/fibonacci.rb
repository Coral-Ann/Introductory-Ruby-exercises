# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

n1 = 0
n2 = 0
fib = 0

while fib < 4181
  if n2 == 0
    puts fib
    n2 += 1
    puts n2
  else
    fib = n1 + n2
    n1 = n2
    n2 = fib
    puts fib
  end
end