require_relative "anagram_finder.rb"

describe AnagramFinder do
	let(:dictionary) { ["pans", "pots", "opt", "snap", "stop", "Tops", "pan's"] }
	let(:finder) { AnagramFinder.new(dictionary) }

	it 'generates the correct signature' do
		signature =  "anps"
		expect(finder.generate_signature("pans")).to eq signature
		expect(finder.generate_signature("Pans")).to eq signature
		expect(finder.generate_signature("pan's")).to eq signature
		expect(finder.generate_signature("pAn's")).to eq signature
	end

	it 'returns all the anagrams for "pans"' do
		expect(finder.get_anagrams("pans").count).to eq 3
	end
end
