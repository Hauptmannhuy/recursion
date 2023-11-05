def fib_iter(n)
  result = [0,1]
  i = 2
  first_prev = 1
  second_prev = 0
  while i <= n do
    current = first_prev + second_prev
    second_prev = first_prev
    first_prev = current
    i+=1
    result << current
  end
  result
end

fib_iter(5)