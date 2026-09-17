module Luhn
  def self.valid?(n)
    n = n.gsub(' ','')
    return false if n.size == 1 || n.match?(/\D/) 
    numbers = []
    n.chars.reverse.each_with_index do |v, i|
      if i % 2 == 1
        if (v.to_i * 2) > 9
          numbers << v.to_i * 2 - 9
        else
          numbers << v.to_i * 2
        end
      else 
        numbers << v.to_i
      end
    end
    puts numbers
    numbers.sum % 10 == 0
  end  
end