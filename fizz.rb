def fizzbuzz(n=100)
  arr = (1..n).to_a
  i = 0
  
  while i < n
    if arr[i] % 3 == 0 && arr[i] % 5 == 0
      arr[i] = "FizzBuzz"
      elsif arr[i] % 3 == 0
      arr[i] = "Fizz"
      elsif arr[i] % 5 == 0
      arr[i] = "Buzz"
    end
    i += 1
  end
  arr.inspect
end

puts fizzbuzz