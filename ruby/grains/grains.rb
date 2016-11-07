class Grains
  SQUARES = 64
  def self.square(query_square)
    unless query_square > 64
      2 ** (query_square - 1)
    end
  end
  def self.total
    (2 ** (SQUARES)) - 1
  end
end
