def caesar_cipher(range, string)
	words = string.split(" ")

	word_idx = 0
	while word_idx < words.length
		word = words[word_idx]

		letter_idx = 0

		while letter_idx < word.length
			char = word[letter_idx].ord - "a".ord

			new_char = (char - range) % 26
			word[letter_idx] = ("a".ord + new_char).chr

			letter_idx += 1
		end
		word_idx += 1
	end

	return words.join(" ")
end

puts caesar_cipher(3, "abc def")
