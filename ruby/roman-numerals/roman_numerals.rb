module BookKeeping
  VERSION = 2
end

class Integer
  def to_roman
    arabic = self
    roman = ''
    if arabic >= 1000
      (arabic / 1000).times do
        roman += 'M'
      end
      arabic = arabic % 1000
    end
    if arabic / 100 == 9
      roman += 'CM'
      arabic -= 900
    end
    if arabic / 500 == 1
      roman += 'D'
      arabic -= 500
    end
    if arabic >= 400
      roman += 'CD'
      arabic -= 400
    end
    if arabic >= 100
      (arabic / 100).times do
        roman += 'C'
      end
      arabic = arabic % 100
    end
    if arabic / 10 == 9
      roman += 'XC'
      arabic -= 90
    end
    if arabic / 50 ==  1
      roman += 'L'
      arabic -= 50
      if arabic >= 10
        (arabic / 10).times do
          roman += 'X'
        end
        arabic = arabic % 10
      end
    elsif arabic >= 10
      if arabic >= 40
        roman += 'XL'
        arabic -= 40
      end
      (arabic / 10).times do
        roman += 'X'
      end
      arabic = arabic % 10
    end
    if arabic / 9 == 1
      roman += 'IX'
    elsif arabic / 5 == 1
      roman += 'V'
      arabic -= 5
      arabic.times do
        roman += 'I'
      end
    elsif arabic == 4
      roman += 'IV'
    else
      arabic.times do
        roman += 'I'
      end
    end
    roman
  end
end
