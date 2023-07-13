class Fibonacci
  def self.calculate(number)
    number < 2 ? number : calculate(number - 1) + calculate(number - 2)
  end
end
