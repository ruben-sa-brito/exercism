module Port
  IDENTIFIER = :PALE
  def self.get_identifier(city)
      city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    {OIL: :A, GAS: :A}.fetch(ship_identifier[0, 3].to_sym, :B)
  end
end
