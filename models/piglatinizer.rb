class PigLatinizer
  VOWELS = ["a", "e", "i", "o", "u"]

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

  def piglatinize
    piglatinized = words.each.collect {|word| piglatinize_word(word)}
    piglatinized.join(" ")
  end

end
