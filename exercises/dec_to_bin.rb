class DecToBin
  def self.convert(number)
    # your code here \/ \/ \/
    binary = ''
    while number.positive?
      binary = (number % 2).to_s + binary
      number /= 2
    end
    binary.to_i
    # your code here /\ /\ /\
  end
end
