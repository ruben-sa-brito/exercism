module Complement
  DNA_TO_RNA = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def self.of_dna(strand)
    strand.chars.map { |d| DNA_TO_RNA[d] }.join()
  end
end