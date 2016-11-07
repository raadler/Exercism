module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def word_count
    counts = {}
    phrase_downcased = @phrase.downcase
    phrase_array = phrase_downcased.scan(/\w+(?:'\w+)?/)
    phrase_array.each do |word|
      if counts[word]
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end
