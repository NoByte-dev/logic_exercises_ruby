class Imc
  def self.calculate(height, weight)
    height = height.to_f / 100
    imc = (weight.to_f / (height * height)).round 2
    return "#{imc} - Abaixo do peso" if imc < 18.5
    return "#{imc} - Peso normal" if (18.5..24.9).include?(imc)
    return "#{imc} - Sobrepeso" if (25..29.9).include?(imc)
    return "#{imc} - Obesidade grau 1" if (30..34.9).include?(imc)
    return "#{imc} - Obesidade grau 2" if (35..39.9).include?(imc)
    return "#{imc} - Obesidade grau 3" if imc > 40
  end
end
