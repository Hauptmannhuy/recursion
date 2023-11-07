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


def fib_rec(n,i = 2,array = [0,1])
 if i < n
  array << array[i-1] + array[i-2]
  i+=1
  fib_rec(n,i,array)
 end
  return array
end

fib_rec(8)

def merge(left,right)
 sorted = []
  loop do
  break if left.empty? || right.empty?
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
  end
end
  sorted + left + right
end

def merge_sort(array)
 if array.length == 1 || array.length == 0
  return array
else
  left = merge_sort(array.slice(0,array.length/2))
  right = merge_sort(array.slice(array.length/2,array.length))
  return merge(merge_sort(left),merge_sort(right))
 end

end


merge_sort([3,5,4,2,1,6])
