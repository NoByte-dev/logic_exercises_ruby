#!/usr/bin/env ruby
options = [
  'IMC', 'Tabuada', 'Par ou Ímpar', 'Juros simples','Elevado',
  'Juros compostos', 'Apertos de mãos', 'Multiplicação',
  'Decimal para Binário', 'Binário para Decimal', 'Fibonacci',
  'Fatorial'
  ]

options.unshift 'Todos os testes'
options.unshift 'Sair'
continue = true

title = <<-EOF
 _____         _             
|_   _|__  ___| |_ ___  ___ 
  | |/ _ \\/ __| __/ _ \\/ __|
  | |  __/\\__ \\ \\ | __/\\__ \\ 
  |_|\\___||___/\\__\\___||___/

EOF

def call_test(file)
  system('clear')

  system("rspec ./spec/#{file}_spec.rb")

  puts '----------------------------------'
  require_relative("./examples/#{file}")
  send(file)
  puts '----------------------------------'

  puts 'Deseja repetir os testes ? (N/Y)'
  repeat = gets.chomp
  call_test(file) if repeat == 'y'
end

def call_all_tests
  system('clear')

  system("rspec")

  puts '----------------------------------'

  puts 'Deseja repetir os testes ? (N/Y)'
  repeat = gets.chomp
  call_all_tests if repeat == 'y'
end

while continue
  system('clear')
  puts title
  puts "Escolha um teste digitando o número correspondente:\n\n"

  options.each.with_index{|option,index| puts "  #{index} - #{option}" }

  option = gets.chomp.to_i

  call_test('imc')                  if option == options.index('IMC')
  call_test('multiplication_table') if option == options.index('Tabuada')
  call_test('even_or_odd')          if option == options.index('Par ou Ímpar')
  call_test('simple_interest')      if option == options.index('Juros simples')
  call_test('at_power')             if option == options.index('Elevado')
  call_test('compound_interest')    if option == options.index('Juros compostos')
  call_test('handshake')            if option == options.index('Apertos de mãos')
  call_test('multiplication')       if option == options.index('Multiplicação')
  call_test('dec_to_bin')           if option == options.index('Decimal para Binário')
  call_test('bin_to_dec')           if option == options.index('Binário para Decimal')
  call_test('fibonacci')            if option == options.index('Fibonacci')
  call_test('factorial')            if option == options.index('Fatorial')
  call_all_tests                    if option == options.index('Todos os testes')

  continue = false if option.zero?
end
