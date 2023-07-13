class SimpleInterest
  def self.calculate(initial_amount, fee, months)
    final_amount = calculate_final_amount(initial_amount, fee, months)
    "R$ #{final_amount.round(2)}"
  end

  def self.calculate_final_amount(initial_amount, fee, months)
    (initial_amount * ((months * fee) / 100.0)) + initial_amount
  end
end
