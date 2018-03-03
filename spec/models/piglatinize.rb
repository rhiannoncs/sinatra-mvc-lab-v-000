class PigLatinize
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def words
    @phrase.split
  end

  def starts_with(phrase)

  end
end
