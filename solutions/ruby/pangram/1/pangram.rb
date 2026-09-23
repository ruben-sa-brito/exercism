module Pangram
  def self.pangram?(text)
    text.downcase.scan(/[A-Za-z]/).uniq.size == 26
  end
end
