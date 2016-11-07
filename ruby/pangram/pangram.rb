module BookKeeping
  VERSION = 2
end

class Pangram
  def self.is_pangram?(str)
    is_pangram = true
    downcase_str = str.downcase
    ('a'..'z').each do |letter|
      if downcase_str.include?(letter) == false
        is_pangram = false
        break
      end
    end
    is_pangram
  end
end
