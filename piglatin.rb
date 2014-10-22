# has problems with words beginning w followed by vowel - translation back to english is ambigous

def to_latin(english)
	if m = /^[aeiouAEIOU]/.match(english)	# begins with vowel, add -way to end
		return english+"-way"
	elsif m = /^[b-df-hj-np-tv-z]+/.match(english.downcase) # begin with consonants
		return english[m.end(0)..-1] + "-" +  m[0] + "ay" # move consonants to end, add ay
	else
		puts "no match - perhaps began with space or non-alphanumeric"
	end
end

def to_english(latin)
	if m = /-way$/.match(latin) # english vowel word ends in -way
		return latin[0..m.begin(0)-1]	# remove -way
	elsif m = /-[b-df-hj-np-tv-z]+ay$/.match(latin) # english consonant word ends -***ay
		return m[0][1..-3] + latin.downcase[0..m.begin(0)-1] # recover consonants from ending, follow with rest
	else
		puts "no match - perhaps began with space or non-alphanumeric"
	end	
end

# test the two functions
text_array = %w{The quick brown fox jumped over the lazy dog}
text_array.each {|word| print to_latin(word) + " "}
puts
text_array = %w{e-thay uick-qay own-bray ox-fay umped-jay over-way e-thay azy-lay og-day}
text_array.each {|word| print to_english(word) +  " "}