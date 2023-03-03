=begin

nil para o ruby significa o nada absoluto.
Em Ruby, a palavra-chave usada para representar a ausência de um valor é nil, não null.
nil é um valor especial que representa a falta de um valor.
É semelhante a null em outras linguagens de programação, mas difere em alguns aspectos
importantes.

Por exemplo, em Ruby, nil é considerado um valor falso, o que significa que ele é avaliado
como false em uma expressão booleana.
Além disso, ao contrário de outras linguagens de programação, em Ruby é possível chamar
métodos em objetos nil sem causar um erro, o que pode ser útil em algumas situações.

Imagina pegarmos um input (entrada) de um usuário.
E só queremos atribuir um valor a essa variável que foi imputada, se ela estiver sem valor.
Para essa análise usa-se o método .nil?, ou seja, está absolutamente sem nada?

=end

valor = nil # variável recebe um valor nulo, ou seja, o absoluto nada.
p valor

valor = 1 if valor.nil? # valor recebe 1 se valor estiver com nil.
p valor # a impressão é 1

=begin

  Por padrão nil de forma booleana sempre retornara false.
  Por saber disso temos uma outra forma de atribuir valor em uma variável nil
  usando negação, ou seja, com o operador de negação -> !

  isso -> if ! quer dizer -> se não for
  Exemplo:

=end

valor2 = nil

valor2 = 1 if valor2 # O que diz aqui é se o valor for true recebe 1
p valor2 # a impressão é nil, ou seja, não recebe 1 porque sabemos que nil é false e não true

valor2 = 1 if !valor2 # como o operador ! esta negando, aqui é:
                      # se não for true valor2 recebe 1
p valor2 # a impressão é 1, ou seja, como não é true recebe 1


=begin

Ao invés de usar a expressão if !valor2, ou seja, se não for true, podemos usar a expressão
unless que quer dizer a mesma coisa.
unless é frequentemente usado como uma alternativa ao if quando queremos verificar se algo
é falso em vez de verdadeiro.

No caso quando coloco unless a frente de valor2, estou negando o true.
Estou dizendo se não for verdadeiro.
exemplo:

=end

valor3 = nil

valor3 = 1 unless valor3 # isso substitui isso -> valor2 = 1 if !valor2
p valor3 # o que é impresso é 1 porque unless nega o true.

=begin
        Observação: Este método aqui baixo é o que a comidade Ruby usa para estes casos
		
  Para finalizar esse raciocínio, temos uma outra opção que é usada para negar que pode
  substituir o if !valor2 e o unless valor 3 que é o:
  ||=  barra barra + =

   Ele funciona assim: se a variável da esquerda já tem um valor, o operador ||= não faz nada
   Caso contrário,se a variável estiver vazia ele define o valor da direita, para a variável.

=end

valor4 = nil

valor4 ||= 3
p valor4 # o resultado aqui é 3