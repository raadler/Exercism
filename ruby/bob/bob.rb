class Bob
  attr_reader :remark
  def initialize
  end
  def hey(remark='')
    case
    when remark.match(/([A-Z]{4,})|([A-Z]{2,}!)/)
      'Whoa, chill out!'
    when remark.match(/\?\z/)
      'Sure.'
    when remark.match(/\A\s*\z/)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
