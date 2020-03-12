require 'rspec'
require 'pry'
require_relative '../lib/hobbit.rb'

RSpec.describe 'As a user', type: :feature do
  before :each do
    @hobbit = Hobbit.new('Frodo')
  end

  describe 'When I call .name on a hobbit class instance' do
    it "it returns the hobbit's name" do
      expect(@hobbit.name).to eq('Frodo')
      hobbit = Hobbit.new('Sam')
      expect(hobbit.name).to eq('Sam')
    end
  end

  describe 'When I call .disposition on a new hobbit class instance' do
    it "it returns 'homebody'" do
      expect(@hobbit.disposition).to eq('homebody')
      hobbit = Hobbit.new('Bilbo', 'adventurous')
      expect(hobbit.disposition).to eq('adventurous')
    end
  end

  describe 'When I call .age on a new hobbit class instance' do
    it "It returns 0" do
      expect(@hobbit.age).to eq(0)
    end
  end

  describe 'When I call .celebrate_birthday on a hobbit class instance' do
    it "It increases the hobbit's age by 1" do
      5.times do @hobbit.celebrate_birthday end

      expect(@hobbit.age).to eq(5)
    end
  end

  describe "When I call .adult? on a hobbit class instance and it's age is 32" do
    it "it returns false" do
      32.times do @hobbit.celebrate_birthday end

      expect(@hobbit.adult?).to eq(false)
    end

    it "it returns true at age 33" do
      33.times do @hobbit.celebrate_birthday end

      expect(@hobbit.adult?).to eq(true)
    end
  end

  describe "When I call .old? on a hobbit class instance and it's age is 100" do
    it "it returns false" do
      100.times do @hobbit.celebrate_birthday end

      expect(@hobbit.old?).to eq(false)
    end

    it "at age 101 .old? returns true" do
      101.times do @hobbit.celebrate_birthday end

      expect(@hobbit.old?).to eq(true)
    end
  end

  describe 'When I call .has_ring? on a hobbit class instance' do
    it "and the hobbit's name is Frodo return true" do
      expect(@hobbit.has_ring?).to eq(true)
    end

    it "and the hobbit's name is not Frodo" do
      hobbit = Hobbit.new('Sam')
      expect(hobbit.has_ring?).to eq(false)
    end
  end

  describe 'When I call .is_short? on a new hobbit class instance' do
    it 'it returns true' do
      expect(@hobbit.is_short?).to eq(true)
    end
  end
end
