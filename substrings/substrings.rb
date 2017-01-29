dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
	word_hash=Hash.new(0)
	string_array=string.split(" ")
	string_array.each do |word|
		word=word.downcase		
		dictionary.each do |sub|
			if word.include? sub 
			word_hash[sub]+=1
			end
		end
	end
	return word_hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)