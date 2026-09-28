module ResistorColorDuo
  RESIST = {
    "black" => "0",
    "brown" => "1",
    "red" => "2",
    "orange" => "3",
    "yellow" => "4",
    "green" => "5",
    "blue" => "6",
    "violet" => "7",
    "grey" => "8",
    "white" => "9"
  }
  def self.value(colors)
    colors.map {|c| RESIST[c]}[0,2].join.to_i
  end
end