arr = IO.readlines("term.txt")



def nice(array)
	i = 0
  while i < array.length
  	if array[i].include?("|") || array[i].include?("x")
  		puts array[i]
   end
  	i += 1
  end
  	array
  end

nice(arr)

