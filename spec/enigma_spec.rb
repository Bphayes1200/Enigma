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
      key = enigma.generate_key
      expect(key).to be_a(String)
      expect(key.length).to eq(5)   
    end 
  end 

  describe "#generate_offset" do 
    xit 'will generate a date offset' do 
      enigma = Enigma.new
      offset = enigma.generate_offset

      expect(offset).to be_a(String)
      expect(offset.length).to eq(4)
    end 
  end 

  describe "#key_hash" do 
    it 'will generate a hash for the keys' do 
      enigma = Enigma.new
      offset = enigma.generate_offset
      key = enigma.generate_key
      key_hash = enigma.key_hash
     
      expect(key_hash).to be_a(Hash)
    end 
  end

  describe "add_keys" do
    it 'will add the key and date_key together' do 
      enigma = Enigma.new
      offset = enigma.generate_offset
      key = enigma.generate_key
      key_hash = enigma.key_hash
      original_values = key_hash.values
      enigma.add_keys(offset)
      new_values = key_hash.values 

      expect(new_values).to be > (original_values)
    end 
  end 
end 