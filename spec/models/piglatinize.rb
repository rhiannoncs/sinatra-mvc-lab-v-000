class PigLatinize
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    @phrase.split
  end

  def starts_with_vowel(word)
    ["a", "e", "i", "o", "u"].include?(word[0])
  end

  def piglatinize_word(word)
    if starts_with_vowel(word)
      piglatinized = word + 'hay'
  end
end
