
def latin(english)

	if m = /^[aeiou]/.match(english)
#		puts "began with vowel #{m[0]}"
#		puts "rest of string #{english[m.end(0)..-1]}"
		return english+"-way"
	elsif m = /^[b-df-hj-np-tv-z]+/.match(english)
#		puts "began with consonants #{m[0]}"
#		puts "rest of string #{english[m.end(0)..-1]}"
		return english[m.end(0)..-1] + "-" +  m[0] + "ay"
	else
		puts "no match - perhaps began with space or non-alphanumeric"
	end

	
end

puts latin "art"
puts latin "eagle"

puts latin "start"
puts latin "door"

#latin "allow"
#latin "follow"
#latin "cat"
#latin "zebra"
latin "knight"
latin " knight"
latin "**hello"