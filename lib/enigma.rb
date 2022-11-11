class Enigma 
  attr_reader :letters

  def initialize
    @letters = ("a".."z").to_a << " "
  end 



#write a method to generate 5 random numbers 
  def generate_key
    numbers = (1..9).to_a
    key  = numbers.sample(5)
    key.join.to_s
  end 
end 
#write generate key method

#write generate date key method

#write encrypt method which takes arguements for words encrypted, key, and date key