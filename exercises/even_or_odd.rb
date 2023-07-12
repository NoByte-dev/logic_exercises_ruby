class EvenOrOdd
  def self.calculate(number)
    #your code here \/ \/ \/
    result = number.to_s.split('.').last.to_i
    result.even? ? "#{number} is even" : "#{number} is odd"
    #your code here /\ /\ /\
  end
end
