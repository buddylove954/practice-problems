arr = IO.readlines("term.txt")



def nice(array)
	i = 0
  while i < array.length
  	if array[i].include?("-")
  	i += 1
  else
  	return array[i]
  	end
  	i += 1
  end
  	
  end

  puts nice(arr)