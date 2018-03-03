class PigLatinizer
  VOWELS = ["a", "e", "i", "o", "u"]

  def words(phrase)
    phrase.split
  end

  def starts_with_vowel(word)
    VOWELS.include?(word[0])
  end

  def piglatinize(word)
    if starts_with_vowel(word)
      piglatinized = word + 'way'
    else
      first_vowel = word.index(/[aeiou]/)
      move_letters = word[0..(first_vowel - 1)]
      piglatinized = word[first_vowel..-1] + move_letters + 'ay'
    end
    piglatinized
  end

  def to_pig_latin(phrase)
    piglatinized = words(phrase).each.collect {|word| piglatinize_word(word)}
    piglatinized.join(" ")
  end

end
