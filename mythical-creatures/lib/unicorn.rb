class Unicorn
  attr_reader :name
  attr_accessor :color

  def initialize(name, color = 'white')
    @name = name
    @color = color
  end

  def say(words)
    '**;* ' + words + ' *;**'
  end

  def white?
    @color == 'white'
  end
end
