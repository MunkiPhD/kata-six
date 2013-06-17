class AnagramFinder

	def initialize(dictionary)
		@dictionary = dictionary
		@hash = {}

		@dictionary.each do |word|
			signature = generate_signature(word)
			if @hash.has_key?(signature)
				@hash[signature] << word
			else
				@hash[signature] = [word]
			end
		end
	end

	def get_anagrams(word)
		signature = generate_signature(word)
		@hash[signature]
	end

	def generate_signature(word)
		lower = word.downcase
		sorted = lower.chars.sort.join
		cleaned = sorted.delete('^a-zA-Z')
		return cleaned
	end
end
