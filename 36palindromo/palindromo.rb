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
  um objeto global de entrada padrão do programa

  4º o e_palindromo ao mesmo tempo que chama a função, é a variável que recebe o return
  da mesma. Nela temos uma condicional para imprimir uma mensagem caso o retorno seja
  palindromo ou não.
                     
            Como funciona a função/método que verifica se é palindromo ou não

  Quando a palavra entra na função a primeira ação a ser feita e importantíssima a se fazer
  é: por a variável palavra em downcase.
  Porque quando o usuário digita a palavra, esta pode vir com a primeira letra em maiúscula.
  Isso é importante porque o proposito desta função é: pegar a palavra digitada e inverter
  as letras, então assim saberemos se tem o mesmo sentido vendo ela ao contrario.
  Exemplo:

  Ovo com a primeira em maiúscula
  ovO ao contrario tem o mesmo sentido porém não é igual ao que foi digitado.

  Ovo é != ovO assim o programa vai tratar como não palindromo

  O downcase transforma todos as letras em minuscula

  A variável palavra_reversa vai receber a palavra digitada ao contrario.
  A variável tamanho recebe o tamanho da palavra.
  Agora temos um loop que faz o trabalho de inverte a palavra.

  1º o loop vai acontecer até que tamanho seja igual a zero. Isso porque a cada interação
  do loop se retira um do tamanha. Isso acontece antes do end em -> tamanho -= 1

  2º A variável letras recebe cada letra da palavra. Isso porque a sua frente temos:
  palavra [tamanho - 1] e palavra [tamanho -1] quer dizer a posição 0

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
=end