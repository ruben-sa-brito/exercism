module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include?(rank.to_i) && FILES.include?(file)
  end

  def self.nickname(first_name, last_name)
    first_name[0, 2].upcase + last_name[-2, 2].upcase
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1].to_i, square[0])
      return nickname(first_name, last_name) + " moved to " + square
    end
    "#{nickname(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
end
end
