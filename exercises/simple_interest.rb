class SimpleInterest
  def self.calculate(initial_amount, fee, months)
    # your code here \/ \/ \/
    result = (initial_amount * ((months * fee) / 100.0)) + initial_amount
    "R$ #{result.round(2)}"
    # your code here /\ /\ /\
  end
end
