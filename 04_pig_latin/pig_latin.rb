def translate(string)
	splitString = string.split(" ")

	i = 0
	while i < splitString.length do 
		splitString[i] = convert(splitString[i])
		i += 1
	end
	return splitString.join(" ")
end

def convert(word)
	prefix = ""
	postfix = ""

	if /^[aeiouhy]/i.match?(word)
	 	return word + "ay"
	else
		i = 0
		while !(/[aeioy]/.match?(word[i])) do
			postfix += word[i]
			i += 1
		end

		while i < word.length do
			prefix += word[i]
			i += 1
		end
		return prefix + postfix + "ay"
	end
end