class Factorial
  def self.calculate(number)
    # your code here \/ \/ \/
    (1..number).inject(:*) || 1
    # your code here /\ /\ /\
  end
end
