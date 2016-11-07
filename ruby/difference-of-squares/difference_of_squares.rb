module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(number)
    @number = number
  end

  def sum_of_squares
    sum_squares = 0
    (1..@number).each do |i|
      sum_squares += i ** 2
    end
    sum_squares
  end

  def square_of_sum
    sum = 0
    (1..@number).each do |i|
      sum += i
    end
    sum * sum
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
