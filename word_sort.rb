def word_sort(str)
  str = str.gsub(/[^0-9A-Za-z]/, " ")
  arr = str.split(" ")
  
  loop do 
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i].downcase > arr[i + 1].downcase
        arr[i], arr[i+1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if swapped == false
  end
  
  return arr.inspect
end