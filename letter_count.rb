def letter_count(str)
  let = str.split("")
  hash = Hash.new
  i = 0
  
  while i < let.length
    hash[let[i]] = let.count(let[i])
    i += 1
  end
  hash.delete(" ")
  hash
end

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5
