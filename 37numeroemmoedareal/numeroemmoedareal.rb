require 'action_view'

puts 'Digite um número'
numero = gets.chomp.strip

if numero.empty? || numero.include?("\n") || numero.include?(' ') || !numero.match?(/\a\d+\z/)
  while numero.empty? || numero.include?("\n") || numero.include?(' ') || !(numero.downcase.match?(/\a\d+\z/)) do
    puts 'O que foi digitado não é um número, por favor digite um '
    numero = $stdin.gets.chomp
  end
end

class NullViewContext
  def link_to(*args)
    ''
  end

  def each
    [].each
  end
end

class NullLookupContext
  def find_all(*args)
    []
  end
end

av = ActionView::Base.new(NullLookupContext.new, NullViewContext.new, nil)

formatado = av.number_to_currency(numero.to_f, unit: 'R$', separator: ',', delimiter: '.')

puts formatado
