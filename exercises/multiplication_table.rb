class MultiplicationTable
  def self.calculate(number)
    result = []
    (1..10).each do |factor|
      result << "#{number} x #{factor} = #{multiply(number, factor)}"
    end
    result.join(', ')
  end

  def self.multiply(number, factor)
    number * factor
  end
end
