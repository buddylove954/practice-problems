def no_repeats(year_start, year_end)
  answer = []
  
  while year_start <= year_end
    if year_start.to_s.split("").uniq! == nil
      answer << year_start
    end
    year_start += 1
  end
  answer.inspect
end

# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
