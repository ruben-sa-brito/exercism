class Phrase
  def initialize(phrase)
    @phrase = phrase
    count = Hash.new(0)
    phrase = phrase.downcase.gsub(":", " ").gsub("!", " ").gsub("?", " ").gsub(",", " ").gsub(" \n", " ").gsub("\t", " ").gsub(/[&@$%^]/, '').gsub(/(?<=\p{L})'(?=\p{L})/, '*').gsub(/'([^']+)'/, '\1').gsub("*", "'").gsub(".", "")
    phrase.split.each do |w|
      count[w] += 1
    end
    @count = count
  end

  def word_count
    @count
  end
end