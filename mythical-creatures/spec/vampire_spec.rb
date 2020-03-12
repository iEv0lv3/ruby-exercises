require 'rspec'
require 'pry'
require_relative '../lib/vampire.rb'

RSpec.describe 'As a user', type: :feature do
  before :each do
    @vampire = Vampire.new('Dracula')
  end

  describe 'When I call .name on a vampire class instance' do
    it "It returns the vampire's name" do
      expect(@vampire.name).to eq('Dracula')

      @vampire.name = 'Vladimir'

      expect(@vampire.name).to eq('Vladimir')
    end
  end

  describe 'When I call .pet on a new vampire class instance' do
    it "It returns the vampire's default pet" do
      expect(@vampire.pet).to eq('bat')
    end
  end

  describe 'When I create a new vampire class instance' do
    it 'I can set a default pet' do
      vampire = Vampire.new('Sid', 'wolf')
      expect(vampire.pet).to eq('wolf')
    end
  end

  describe 'When I call .thirsty? on a vampire class instance' do
    it "It returns true by default" do
      expect(@vampire.thirsty?).to eq(true)
    end
  end

  describe 'When I call .drink on a vampire class instance and then call .thirsty?' do
    it 'It returns false' do
      @vampire.drink
      expect(@vampire.thirsty?).to eq(false)
    end
  end
end
