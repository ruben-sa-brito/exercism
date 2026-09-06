module SavingsAccount
  def self.interest_rate(balance)
    return 3.213 if balance < 0
    return 0.5 if balance < 1000
    return 1.621 if balance < 5000
    2.475 
  end

  def self.annual_balance_update(balance)
    (interest_rate(balance)/100 + 1) * balance
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    total_years = 1
    while desired_balance > annual_balance_update(current_balance)
      current_balance = annual_balance_update(current_balance)
      total_years += 1
    end
    total_years
  end
end
