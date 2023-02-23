require 'action_view'

puts 'Digite um número'
numero = gets.chomp.strip

if numero.empty? || numero.include?('\n') || numero.include?(' ')
  while numero.empty? || numero.include?('\n') || numero.include?(' ') do
    puts 'O que foi digitado não é um número, por favor digite um '
    numero = $stdin.gets.chomp
  end

end

av = action_view::Base.new

formatado = av.number_to_currency(numero.to_f, unit: 'R$', separator: ',', delimiter: '.')

puts formatado
