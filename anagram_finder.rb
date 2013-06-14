class AnagramFinder

	def initialize(dictionary)

	end

	def generate_signature(word)
		lower = word.downcase
		sorted = lower.chars.sort.join
		cleaned = sorted.delete('^a-zA-Z')
		return cleaned
	end
end
