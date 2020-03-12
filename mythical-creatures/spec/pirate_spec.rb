require 'rspec'
require 'pry'
require_relative '../lib/pirate.rb'

RSpec.describe 'As a user', type: :feature do
  before :each do
    @pirate = Pirate.new('Jack')
  end

  describe 'When I call .name on a pirate class instance' do
    it "it returns the pirate's name" do
      expect(@pirate.name).to eq('Jack')
    end
  end

  describe 'When I call .job on a new pirate class instance' do
    it "it returns 'scallywag' by default" do
      expect(@pirate.job).to eq('scallywag')
    end

    it "it can have other jobs" do
      pirate = Pirate.new('Jack', 'cook')

      expect(pirate.job).to eq('cook')
    end
  end

  describe 'When I call .cursed? on a new pirate class instance' do
    it "it returns false by default" do
      expect(@pirate.cursed?).to eq(false)
    end

    it "and after I call 3 .henious_acts, it returns true" do
      3.times do @pirate.henious_act end
      expect(@pirate.cursed?).to eq(true)
    end
  end

  describe 'When I call .booty on pirate class instance' do
    it 'it returns 0 by default' do
      expect(@pirate.booty).to eq(0)
    end

    it 'and returns 100 for each ship robbed' do
      2.times do @pirate.rob_ship end

      expect(@pirate.booty).to eq(200)
    end
  end
end
