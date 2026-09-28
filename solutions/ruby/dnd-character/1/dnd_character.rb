=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints
  
  def self.modifier(score)
    ((score - 10) /2).floor
  end

  def initialize
    @strength = generate_att
    @dexterity = generate_att
    @constitution = generate_att
    @intelligence = generate_att
    @wisdom = generate_att
    @charisma = generate_att
    @hitpoints = DndCharacter.modifier(@constitution) + 10
  end

  def generate_att
    (1..4).map {|n| rand(1..6)}.sort.reverse[0,3].sum
  end
end
