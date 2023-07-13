class EvenOrOdd
  def self.calculate(number)
    # O teste unitário exisge que:
    # Seja considerado números decimais;
    # Seja avaliado o último dígito decimal como critério para determinar par ou ímpar.
    # Ex: 1.8 é par e 10.1 é ímpar
    result = number_is_decimal?(number) ? (number * 10).to_i % 10 : number.to_i % 10
    result.even? ? "#{number} is even" : "#{number} is odd"
  end

  def self.number_is_decimal?(number)
    number != number.to_i
  end
end
