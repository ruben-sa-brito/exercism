class ResistorColorTrio
  OHMS = {
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }
  def initialize(colors)
    if colors.size >= 3
      @colors = colors[..2]
    else
      @colors = colors
    end
  end

  def label
    resist = ""
    if @colors.size == 3
     OHMS[@colors[-1]].times do 
        resist += "0"
      end
    end
    @colors[...-1].reverse.each do |color|
      resist =  OHMS[color].to_s + resist
    end
    
    if resist.to_i >= 1_000_000_000
      return "Resistor value: #{resist.to_i/1_000_000_000} gigaohms" 
    elsif resist.to_i >= 1_000_000
      return "Resistor value: #{resist.to_i/1_000_000} megaohms"
    elsif  resist.to_i >= 1_000
      return "Resistor value: #{resist.to_i/1_000} kiloohms"
    end
    "Resistor value: #{resist.to_i.to_s} ohms"
    
  end
  
end