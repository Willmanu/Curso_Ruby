require 'action_view'

puts 'Digite um número'
numero = gets.chomp.strip

if numero.empty? || numero.include?('\n') || numero.include?(' ')
  while numero.empty? || numero.include?('\n') || numero.include?(' ') do
    puts 'O que foi digitado não é um número, por favor digite um '
    numero = $stdin.gets.chomp
  end

end
numero.to_i
numero.action_view::Base.new
numero.number_to_currency(numero, unit: 'R$', separator: ',', delimiter: '.')

puts numero