class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError, "The two strands are not the same length"
    end

    differences = 0
    strand1.each_char.with_index do |nucleotide, index|
      if nucleotide != strand2[index]
        differences += 1
      end
    end

    differences
  end
end

module BookKeeping
  VERSION = 3
end
