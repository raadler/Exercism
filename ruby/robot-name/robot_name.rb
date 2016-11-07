module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Robot
  @@taken_names = []
  ALPHABET = ('A'..'Z').to_a
  attr_accessor :name

  def initialize
    @name = ''
    new_name(@name)
    while @@taken_names.include?(@name)
      new_name(@name)
    end
    @@taken_names << @name
  end

  def reset
    while @@taken_names.include?(@name)
      new_name(@name)
    end
    @@taken_names << @name
  end

  def new_name(name)
    @name = ALPHABET.sample + ALPHABET.sample + rand(100..999).to_s
  end
end
