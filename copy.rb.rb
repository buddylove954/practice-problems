puts "What is the source file you would like to copy?"
file_contents = gets.chomp
copy = IO.read("#{file_contents}")
puts "Where would you like to copy the file?"
name = gets.chomp
IO.write("#{name}", copy)