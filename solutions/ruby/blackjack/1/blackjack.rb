module Blackjack
  def self.parse_card(card)
    parser = {
      "ace" => 11,
      "two" => 2,
      "three" => 3,
      "four" => 4,
      "five" => 5,
      "six" => 6,
      "seven" => 7,
      "eight" => 8,
      "nine" => 9,
      "ten" => 10,
      "jack" => 10,
      "queen" => 10,
      "king" => 10
    }
    parser.fetch(card, 0)
  end

  def self.card_range(card1, card2)
    case parse_card(card1) + parse_card(card2)
    when 4..11
      return "low"
    when 12..16
      return "mid"
    when 17..20
      return "high"
    when 21
      return "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    if card1 == "ace" && card2 == "ace"
      return "P"
    end
    case card_range(card1, card2)
      when "blackjack" 
        if !["queen", "king", "jack", "ten", "ace"].include?(dealer_card)
          return "W"
        else
          return "S"
        end
      when "high"
        return "S"
      when "mid"
        if parse_card(dealer_card) >= 7
          return "H"
        else
          return "S"
        end
      when "low"
        "H"
    end
    
  end
end
