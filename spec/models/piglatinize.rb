class PigLatinize
  attr_reader :phrase
  VOWELS = ["a", "e", "i", "o", "u"]

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    @phrase.split
  end

  def starts_with_vowel(word)
    VOWELS.include?(word[0])
  end

  def piglatinize_word(word)
    if starts_with_vowel(word)
      piglatinized = word + 'hay'
    else
      first_vowel = word.index(/[aeiou]/)
      move_letters = word[0..(first_vowel - 1)]
      piglatinized = word[first_vowel..-1] + move_letters + 'ay'
    end
    piglatinized
  end

  def piglatinize(phrase)
    piglatinized = phrase.words.each {|word| piglatinize_word(word)}
  end

end
