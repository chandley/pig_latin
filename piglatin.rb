
def latin(english)

	if english =~ /^[aeiou]/ 
		puts "began with vowel"
	elsif english =~ /^[b-df-hj-np-tv-z]+/
		puts "began with consonants"
	end

	
end

latin "allow"
latin "follow"
latin "cat"
latin "zebra"