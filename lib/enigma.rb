class Enigma 
  attr_reader :letters

  def initialize
    @letters = ("a".."z").to_a << " "
  end 

  def generate_key
    numbers = (1..9).to_a
    key  = numbers.sample(5)
    key_string = key.join.to_s
  end 


  def generate_offset
    date = Date.today
    date_int = date.strftime('%d%m%y').to_i
    squared_date = date_int ** 2 
    squared_date.digits[0..3].reverse
  end 

  #write method that adds the keys together
  def add_keys(key, offset)
    
  end 

end 


#write encrypt method which takes arguements for words encrypted, key, and date key