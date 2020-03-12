require 'rspec'
require 'pry'
require_relative '../lib/wizard.rb'

RSpec.describe 'As a user', type: :feature do
  before :each do
    @wizard = Wizard.new('Gandalf')
  end

  describe 'When I call .name on a wizard class instance' do
    it "it returns 'Gandalf' by default" do
      expect(@wizard.name).to eq('Gandalf')
    end

    it "it returns the wizard's name" do
      wizard = Wizard.new('Kitara')

      expect(wizard.name).to eq('Kitara')
    end
  end

  describe 'When I call .bearded? on a wizard class instance' do
    it "it returns true by default" do
      expect(@wizard.bearded?).to eq(true)
    end

    it "it returns false if initialized as false" do
      wizard= Wizard.new('Kitara', bearded: false)
      expect(wizard.bearded?).to eq(false)
    end
  end

  describe 'When call .incantation(spell) on a wizard class instance' do
    it "it returns 'sudo' as a prefix to the spell" do
      expect(@wizard.incantation("chow ~/bin")).to eq("sudo chow ~/bin")
    end
  end

  describe 'When I call .rested? on a wizard class instance' do
    it "it returns true by default" do
      expect(@wizard.rested?).to eq(true)
    end
  end

  describe 'When I call .cast on a wizard class instance' do
    it "it returns 'MAGIC MISSLE!'" do
      expect(@wizard.cast).to eq('MAGIC MISSLE!')
    end

    it "after calling .cast 3 times, calling .rested? resturns false" do
      2.times do @wizard.cast end
      expect(@wizard.rested?).to eq(true)

      @wizard.cast
      expect(@wizard.rested?).to eq(false)
    end
  end
end
