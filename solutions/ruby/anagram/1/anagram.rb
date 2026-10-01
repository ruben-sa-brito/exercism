class Anagram
  def initialize(word)
    @word = word
  end
  def match(words)
    anagram = []
    words.each do |w|
      if w.downcase.chars.tally == @word.downcase.chars.tally
        if w.downcase != @word.downcase
          anagram << w
        end
      end
    end
    anagram
  end
end