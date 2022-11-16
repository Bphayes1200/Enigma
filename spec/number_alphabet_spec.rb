require './spec_helper'

RSpec.describe NumberAlphabet do
  describe 'initialize' do 
    it 'will exist and have attributes' do 
      numbers = NumberAlphabet.new
      
      expect(numbers).to be_a(NumberAlphabet)
      
    end 
  end 
end 