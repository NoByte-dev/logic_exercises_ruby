class CompoundInterest
  def self.calculate(initial_amount, fee, months)
    # your code here \/ \/ \/
    result = initial_amount * (1 + fee / 100.0) ** months
    "R$ #{result.round(2)}"
    # your code here /\ /\ /\
  end
end
