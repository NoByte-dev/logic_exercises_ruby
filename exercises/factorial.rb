class Factorial
  def self.calculate(number)
    (1..number).inject(:*) || 1
  end
end
