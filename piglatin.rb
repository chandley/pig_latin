
def latin(english)

	if m = /^[aeiou]/.match(english)
		puts "began with vowel #{m[0]}"
	elsif m = /^[b-df-hj-np-tv-z]+/.match(english)
		puts "began with consonants #{m[0]}"
	end

	
end

latin "allow"
latin "follow"
latin "cat"
latin "zebra"
latin "knight"