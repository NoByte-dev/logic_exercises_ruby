class MultiplicationTable
  def self.calculate(number)
    #your code here \/ \/ \/
    (1..10).map { |factor| "#{number}x#{factor} = #{number * factor}" }.join(', ')
    #your code here /\ /\ /\
  end
end
