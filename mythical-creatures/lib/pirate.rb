class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = 'scallywag')
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
  end

  def cursed?
    @cursed >= 3
  end

  def henious_act
    @cursed += 1
  end

  def rob_ship
    @booty += 100
  end
end
