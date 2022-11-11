require './spec_helper'

RSpec.describe Enigma do 
  describe "initialize" do 
    it 'will exist and have attributes' do 
      enigma = Enigma.new

      expect(enigma).to be_a(Enigma)
      expect(enigma.letters).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
    end 
  end 

  describe "#generate_key" do 
    it 'will generate a random 5 digit key' do 
      enigma = Enigma.new

      expect(enigma.generate_key).to be_a(String)
    end 
  end 
end 