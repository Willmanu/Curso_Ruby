=begin
  
  until significa até, ou seja, até que condição seja igual o que se deseja faça.
  Ao contrario do while esse laço verifica a condição logo no inicio para depois
  executar o bloco.

  A estrutura básica do until é a seguinte:

  until condição do
    código a ser executado
  end
  Exemplo:

  until significa até que
  do é faz ou faça
  end é fim
=end

valor = 0

until valor == 10 do
  puts valor
  valor += 1

end


=begin

Acima esta dizendo: até que o valor seja igual a 10 faça o blocoden código.
Fazer o bloco é: imprimir o valor na tela e somar mais um na variável,
até que o valor seja 10.

A impressão fica:

0
1
2
3
4
5
6
7
8
9
Perceba que ele imprimiu o zero e foi imprimindo até o numero 9
Isso porque ele testa primeiro para depois executar o código
Como o programa testa primeiro, quando estava no nove ele imprimiu o nove acrecentou
mais um no 9, e a variável ficou com o 10.
No momente de testar após o 9 viu que a varável estava com 10.
Sendo assim não imprimi o 10 porque ja tinha o valor desejado, então encerra sem imprimir.

=end