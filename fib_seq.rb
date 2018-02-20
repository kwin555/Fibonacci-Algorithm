require 'benchmark'

def recursive_fib(number)
  # code here
  if number < 2
    number
  else
    recursive_fib(number - 1) + recursive_fib(number - 2)
  end
end

def iterative_fib(n)
  fib_array = []
  fib_array[0] = 0
  fib_array[1] = 1
  for i in 2..n
    fib_array[i] = fib_array[i - 1] + fib_array[i - 2]
  end
  fib_array[n]
end

puts recursive_fib(6)
puts iterative_fib(6)

num = 50

Benchmark.bm do |x|
  x.report('recursive_fib') { recursive_fib(num) }
  x.report('iterative_fib') { iterative_fib(num) }
end
