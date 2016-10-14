class PigLatinizer

	# attr_accessor :text

	# def initialize(text)
	# 	@text = text
	# end

	def piglatinize_word(word)
		if word[0].downcase.match(/a|e|i|o|u/).nil?
			parts = word.split(/([aeiou].*)/)
		# 	word_array = word.split("")
			parts[1].to_s + parts[0].to_s + "ay"
			# word.split("").push(parts[0]).join + "ay"
		else
			word << "way"
		end
	end

	def piglatinize(sentence)
		@sentence = sentence
		split_sentence = @sentence.split(" ").map do |word|
			piglatinize_word(word)
		end.join(" ")
	end

	def to_pig_latin(sentence)
		@sentence = sentence
		piglatinize(@sentence)
	end

end