class Complement
  def self.of_dna(strand)
    rna = ''
    unless strand.match(/[^GTCA]/)
      strand.each_char do |nucleotide|
        case nucleotide
        when 'A'
          rna += 'U'
        when 'T'
          rna += 'A'
        when 'G'
          rna += 'C'
        when 'C'
          rna += 'G'
        end
      end
    end
    rna
  end
end

module BookKeeping
  VERSION = 4
end
