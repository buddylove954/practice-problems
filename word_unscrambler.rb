# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#

def word_unscrambler(str, words)
  i = 0
  new = []
  while i < words.length
    if str.split("").sort == words[i].split("").sort
      new << words[i]
    end
    i += 1
  end
  return new.inspect
end
