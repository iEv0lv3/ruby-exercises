require 'rspec'
require 'pry'
require_relative '../lib/unicorn.rb'

RSpec.describe 'When I call .name on a Unicorn class instance', type: :feature do
  before :each do
    @unicorn = Unicorn.new('Megatron')
  end
  it "It will return the Unicorn's name" do
    expect(@unicorn.name).to eq('Megatron')
  end

  describe 'When I call .color or .white? on a new Unicorn class instance' do
    it "They will return 'white' and 'true' respectively" do
      expect(@unicorn.color).to eq('white')
      expect(@unicorn.white?).to eq(true)
    end
  end

  describe 'A Unicorn does not have to be white' do
    it 'It can be any color' do
      @unicorn.color = 'purple'
      expect(@unicorn.color).to eq('purple')
      expect(@unicorn.white?).to eq(false)
    end
  end

  describe 'When I call .say(words) on a Unicorn class instance' do
    it "it says sparkly stuff" do
      expect(@unicorn.say('Wonderful!')).to eq("**;* Wonderful! *;**")
      expect(@unicorn.say("I don't like you very much.")).to eq("**;* I don't like you very much. *;**")
    end
  end
end
