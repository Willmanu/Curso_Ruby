require 'action_view'

puts 'Digite um número'
numero = gets.chomp.strip

if numero.empty? || numero.include?('\n') || numero.include?(' ')
  while numero.empty? || numero.include?('\n') || numero.include?(' ') do
    puts 'O que foi digitado não é um número, por favor digite um '
    numero = $stdin.gets.chomp
  end

else
  numero2 = numero.to_i
  numero2.action_view::Base.new
  numero2.number_to_currency(numero, unit: 'R$', separator: ',', delimiter: '.')
  
  puts numero
end

