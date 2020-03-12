class Vampire
  attr_accessor :name
  attr_reader :pet

  def initialize(name, pet = 'bat')
    @name = name
    @pet = pet
    @thirsty = true
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end
end
