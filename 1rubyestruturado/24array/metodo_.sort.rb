=begin

                                           Método .sort
 É um metodo muito usado para ordenar elementos em um array ou Range, em ordem crescente ou
 decrescente dependendo do argumento passado para ele
 Ele retorna uma nova matriz que contém os elementos na ordem especificada
 Exemplo:

=end

array = [5, 2, 8, 1, 3]
number_sorted = array.sort
puts number_sorted

=begin

 O resultado é:
 1
 2
 3
 5
 8
                                        Array que contém strings
 Funciona com array de strings também
 Exemplo:
=end

array_nomes = %w[João Pedro Ana Maria]
nomes_ordenados = array_nomes.sort
puts nomes_ordenados.inspect

=begin
 O resultado é:
   ["Ana", "João", "Maria", "Pedro"]
 A impressão ficou dessa forma porque usei o método .inspect

 inspect é inspecionar
 O .inspect é útil para visualizar o conteúdo de objetos complexos, como arrays
 aninhados, hashes e objetos personalizados
 Em casos simples como o exemplo de números, não é necessário usar o método .inspect

 Outra coisa notável no código é o uso de %w
 Esse %w serve para indicar que o ""array é de strings" ou "de palavras"
 Ao invés de usar uma sintaxe assim:
   array_nomes = ['João', 'Pedro', 'Ana', 'Maria']

 por convenção o correto quando strings é usar com essa indicação:
  array_nomes = %w[João Pedro Ana Maria]

 Posso usar a sintaxe %w ou %W, ou seja, o w minúsculo ou W maiúsculo
 Ambas as sintaxes %w e %W criam um array de palavras, onde as palavras são separadas por
 espaços em vez de vírgulas
 A diferença é que %w cria um array de palavras onde as strings são tratadas como literais
 simples (sem interpolação ou escape de caracteres), enquanto %W permite interpolação e
 escape de caracteres.

	                            Impressão sem o .inspect

 O resultado sem o .inspect é:
  Ana
  João
  Maria
  Pedro

  A impressão dos nomes sem o método .inspect faz com que cada nome seja exibido em uma nova
  linha, porque o método puts adiciona automaticamente uma nova linha após cada argumento que
  é passado para ele


                                              Método .join

 array_nomes = %w[João Pedro Ana Maria]
 nomes_ordenados = array_nomes.sort
 puts nomes_ordenados.join(", ")

=end

array_nomes2 = %w[João Pedro Ana Maria]
nomes_ordenados2 = array_nomes2.sort
puts nomes_ordenados2.join(', ')

=begin

 Neste exemplo, o método .join é usado para concatenar todas as strings do array
 nomes_ordenados2 em uma única string separada por vírgulas, que é exibida na saída do console
 usando puts

 O resultado:
   Ana, João, Maria, Pedro

=end
