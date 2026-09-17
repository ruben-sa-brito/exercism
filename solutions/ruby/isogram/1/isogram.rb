module Isogram
  def self.isogram?(word)
    word = word.gsub(' ','').gsub('-','').downcase
    word.chars.size == word.chars.uniq.size
  end
end
