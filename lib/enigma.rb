class Enigma 
  attr_reader :letters

  def initialize
    @letters = ("a".."z").to_a << " "
  end 

  def generate_key
    numbers = (1..9).to_a
    key  = numbers.sample(5)
    key.join.to_s
  end 


  def generate_date_key
    date = Date.today
    date.strftime('%d%m%y')
  end 
end 
#write generate date key method

#write encrypt method which takes arguements for words encrypted, key, and date key