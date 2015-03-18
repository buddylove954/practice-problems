arr = IO.readlines("term.txt")



def nice(array)
	i = 0
  while i < array.length
  	if array[i].include?("-")
  		array.delete(array[i])
   end
  	i += 1
  end
  	
  end

  puts nice(arr)