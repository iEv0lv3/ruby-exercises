require 'rspec'
require 'pry'
require_relative '../lib/dragon.rb'

RSpec.describe 'As a user', type: :feature do
  before :each do
    @dragon = Dragon.new('Krynn', :gold, 'Lessa')
  end

  describe 'When I call .name on a dragon class instance' do
    it "it returns the dragon's name" do
      expect(@dragon.name).to eq('Krynn')
    end
  end

  describe 'When I call .rider on a new dragon class instance' do
    it "It returns the dragon's default rider" do
      expect(@dragon.rider).to eq('Lessa')
    end
  end

  describe 'When I call .color on a dragon class instance' do
    it "It returns the dragon's color" do
      expect(@dragon.color).to eq(:gold)
    end
  end

  describe 'When I call .hungry? on a new dragon class instance' do
    it "It returns true" do
      expect(@dragon.hungry?).to eq(true)
    end
  end

  describe 'When I call .hungry? after calling .eat 3 times on a dragon class instance' do
    it 'it returns false' do
      2.times do @dragon.eat end
      expect(@dragon.hungry?).to eq(true)
      @dragon.eat
      expect(@dragon.hungry?).to eq(false)
    end
  end
end
