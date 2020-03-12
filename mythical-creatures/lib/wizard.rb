class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    words.prepend('sudo ')
  end

  def rested?
    @rested < 3
  end

  def cast
    @rested += 1

    'MAGIC MISSLE!'
  end
end
