def palindromo (palavra)
  palavra = palavra.downcase # transforma toadas as letras em minuscula
  palavra_reversa = ''
  tamanho = palavra.length
  until tamanho.zero?
    letras = palavra [tamanho - 1]
    palavra_reversa << letras
    tamanho -= 1
  end
  if palavra_reversa == palavra
    return true
  else
    return false
  end
end

puts 'Escreva uma palavra e verificaremos se é palíndromo ou não'

palavra = gets.chomp.strip

if palavra.empty?
  while palavra.empty?
    puts 'Não é uma palavra, por favor digite uma palavra'
    palavra = $stdin.gets.chomp.strip
  end
else
  e_palindromo = palindromo(palavra)
  if e_palindromo
    puts "Sua palavra é #{palavra} portando é palíndromo"
  else
    puts "Sua palavra é #{palavra} portanto não é palíndromo"
  end
end

=begin

          Entendendo o código

  O método sempre deixe nas primeiras linhas.
  1º precisamos pegar a entrada da palavra digitada com o gets, o chomp tirando caracteres
  especiais e strip retirando possíveis espaços a direita e a esquerda.

  2º empty para validar a variável e ver se o usuário não clicou
  em enter ou digitou espaços vazios. Se for esse o caso temos um loop que imprimi uma
  mensagem avisando para digitar uma palavra. O loop fica até que ele digite uma palavra.

  3º dentro do loop que trata o fato de não digitar uma palavra, depois da mensagem
  apresentada ao usuário, precisamos obter a palavra digitada usando o $stdin que represent
  um objeto global de entrada padrão do programa.

  4º o e_palindromo ao mesmo tempo que chama a função, é a variável que recebe o return
  da mesma. Nela temos uma condicional para imprimir uma mensagem caso o retorno seja
  palindromo ou não.
                     
            Como funciona a função/método que verifica se é palindromo ou não

  5º Quando a palavra entra na função a primeira ação a ser feita e importantíssima a se fazer
  é: por a variável palavra em downcase. Porque quando o usuário digita a palavra, esta pode
  vir com a primeira letra em maiúscula.
 

=end