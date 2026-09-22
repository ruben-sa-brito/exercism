module Acronym
  def self.abbreviate(words)
    words.gsub('-',' ').gsub('_','').split.map {|w| w[0].upcase}.join
  end
end
