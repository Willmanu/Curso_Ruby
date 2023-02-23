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

  O downcase transforma todos as letras em minuscula ovo == ovo

  A variável palavra_reversa vai receber a palavra digitada ao contrario.
  A variável tamanho recebe o tamanho da palavra.
  Agora temos um loop que faz o trabalho de inverte a palavra.

  1º o loop vai acontecer até que a variável tamanho seja igual a zero. Isso porque a cada
  interação do loop se retira um da varável tamanho. Isso acontece antes do end em -> tamanho -= 1

  2º A variável letras recebe cada letra da varável palavra. Isso porque a sua frente temos:
  palavra [tamanho - 1]. O tamanho da palavra é 3, porém a letras dentro da variável palavra
  começa em 0. exemplo:
  palavra -> ['o' 'v' 'o'] são 3 letras por isso a variável letras mostra 3
  posição -> [ 0   1   2 ] posição começa em 0 poe isso precisamos pegar a ultima
  
  Então tamanho -1 quer dizer -> 3 que é o tamanho da palavra - 1 fica 2.
  Com isso a variável letras recebe a 2 posição que no caso é a ultima letra.

  3º Em palavra_reversa é adicionado (<<) a ultima letra que é a 2.
  O fato de termos a variável letras recebendo palavra [tamanho -1]dessa forma com colchete []
  faz com a variável letra seja um array. Então por isso palavra_reversa que recebe o
  adicionamento << agora vira um array. Primeiro que o dado que ela recebe vem de um array,
  depois que o uso desse simbolo << é para adicionar em array
  A variável palavra_reversa agora tem a ultima letra d variável palavra.

  4º Sabemos que a varável tamanho carrega o valor de 3 e essa linha escrita tamanho -= 1
  subtrai um da variável tamanho. Sendo assim quando entra no loop novamente não é zero ainda,
  e o loop continua a fazer o mesmo que fez anteriormente.


  5º Com isso teremos na variável palavra_reversa, a palavra digitada em reverso que será
  comparada fora desse laço until. Se for == retornará true se não retornara false.

  6º Assim a variável e_palindromo que chamou a função/método, recebe o retorno do mesmo e
  se o valor contido em na variável e_palindromo for true será palindromo, se for false
  não será.


                                          Método reverse

  Com esse método não precisamos fazer tudo isso que fizemos para descobri se a palavra
  digitada é palindromo

=end

def palindromo(palavra)

	palavra.downcase == palavra.downcase.reverse
  
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