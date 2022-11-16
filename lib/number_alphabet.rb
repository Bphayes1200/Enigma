class NumberAlphabet
  attr_reader :letter_numbers
  def initialize 
    @letter_numbers = Hash.new(0)
    letters = ("a".."z").to_a << " "
    letters.each do |letter|

end 