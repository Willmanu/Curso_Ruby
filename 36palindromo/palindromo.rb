=begin 
  
  Palíndromo é uma palavra que quandro lida da esquerda para direita, quanto da direita para
  esquerda, tem o mesmo significado
  Por exemplo: Ovo, Osso, Radar etc.
  
  O objetivo aqui é definir um método que verifique se a palavra é palíndromo.
  Usar o gets para pedir o input de dados e chamar o método
  imprimir se é palíndromo ou não

=end

puts 'Escreva uma palavra e verificaremos se é palíndromo ou não'

palavra = gets.strip

if palavra.empty? || palavra.blank? || palavra.nil?
 
  while palavra.empty
  
	puts 'Não é uma palavra, por favor digite uma palavra'

	palavra.gets.strip

  end
	

end

def palíndromo (palavra)

end