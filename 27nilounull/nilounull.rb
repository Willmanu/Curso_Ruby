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

Imagina pegarmos um input de um usuário.
E só queremos atribuir um valor a essa variável se ela estiver sem valor.
Para examinar se esta variável usa-se o método .nil?


valor = nil # variável recebe um valor nulo
p valor

valor = 1 if valor.nil? # valor recebe 1 se estiver absolutamente sem nada.
p valor
=end



=begin

  Por padrão nil de forma booleana sempre retornara false.
  Por saber disso temos uma outra forma de atribuir valor em uma variável nil
  usando negação, ou seja, com o operador de negação -> !
  Exemplo: 

=end

valor2 = nil
p valor2

valor2 = 1 if valor2 # O que diz aqui é se o valor for true recebe 1
p valor2 # a impressão é nil, ou seja, não recebe 1

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