class EvenOrOdd
  def self.calculate(number)
    #your code here \/ \/ \/
    result = number.integer? ? number.to_i : number.to_s.split('.')[1].to_i
    result.even? ? "#{number} is even" : "#{number} is odd"
    #your code here /\ /\ /\
  end
end
