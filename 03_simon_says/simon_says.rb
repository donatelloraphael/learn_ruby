#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num_of_times = 2)
	repeated_word = ""
	while num_of_times > 0 do
		repeated_word += string + " "
		num_of_times -= 1
	end
	return repeated_word.strip
end

def start_of_word(word, num_letters)
	i = 0
	sub_string = ""
	while i < num_letters
		sub_string += word[i]
		i += 1
	end
	return sub_string
end

def first_word(string)
	word_break = string =~ / /
	return string[0..word_break - 1]
end

def titleize(string)
	little_words = ["a", "an", "the", "over", "or", "and"]
	words = string.split(" ")
	words.map! do |word|
		if !(little_words.include?(word))
			word = word.capitalize
		else word = word	
		end
	end
	words = words.join(" ")
	words[0] = words[0].upcase
	
	return words
end
