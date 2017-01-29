def cipher (string, value)
	letters_to_numbers={}
	alphabet = ("a".."z").to_a

	for i in 0...26 do
	letters_to_numbers[alphabet[i]]=i
	end

	string_array=string.split("")
	string_array.map! do |letter|
		if alphabet.include? letter.downcase
			if letter==letter.upcase
				letter=letters_to_numbers.key((letters_to_numbers[letter.downcase]+value)%26).upcase
			else
			letter=letters_to_numbers.key((letters_to_numbers[letter]+value)%26)
			end
		else
			letter=letter
		end
	end
	return string_array.join("")
end

puts cipher("Genius without education is like silver in the mine", 17)






