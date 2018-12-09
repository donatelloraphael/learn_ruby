class Book
	attr_reader :title

	def title=(value)
		@title = self.convert(value)
	end

	def convert(string)
		splittedString = string.split(" ")
		littleWords = ["a", "an", "or", "the", "and", "in", "of", "on"]

		i = 0
		while i < splittedString.length do
			if !(littleWords.include?(splittedString[i]))
				splittedString[i] = splittedString[i].capitalize
			end
			i += 1		
		end
		parsedString = splittedString.join(" ")
		parsedString[0] = parsedString[0].upcase
		return parsedString
	end
end
