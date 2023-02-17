=begin

  Enquanto uma variável guarda um valor, o Array guarda mais podendo até com eles
  se formar listas.

  Existe duas forma para declarar ou inicializar o array:
  - o nome do array e após o = abre e fecha colchete []
  - ou nome do array e após = escreve-se Array.new
  Exemplo:
  
=end

array_1 = []
p array_1.class # a impressão é Array

array_2 = Array.new # O .new é um método que instancia novo objeto daquela classe
p array_2.class

=begin
  Em Ruby, é possível inserir valores em um array de diversas maneiras além de usar
  o sinal de igual, abre e fecha chaves e os valeres a serem inseridos quando mais de um
  são separados por virgula.
  meu_array = [1,2,3]
  
  Seguem abaixo algumas das principais formas:

  Exemplo com o push

  O método push adiciona um ou mais elementos ao final do array.
  Exemplo:
=end

array = [1, 2, 3]
array.push(4)
p array # [1, 2, 3, 4]

=begin

  Utilizando o método <<: o operador << adiciona um único elemento ao final do array.
  Exemplo:
=end

array = [1, 2, 3]
array << 4
puts array # [1, 2, 3, 4]

=begin
  
  Utilizando o método unshift: o método unshift adiciona um ou mais elementos
  no início do array.
  Exemplo:

=end

array = [1, 2, 3]
array.unshift(0)
puts array # [0, 1, 2, 3]

=begin

  Utilizando o método insert: o método insert adiciona um ou mais elementos
  em uma posição específica do array.
  Exemplo: 

=end

array = [1, 2, 3]
array.insert(1, 1.5) # inserir na posição 1 o valor 1.5
p array # [1, 1.5, 2, 3]

=begin

  Utilizando o método concat: o método concat adiciona os elementos de um array ao final
  de outro array. Exemplo:

=end

array1 = [1, 2, 3]
array2 = [4, 5, 6]
array1.concat(array2) # array 1 concatenando, ou seja, juntando com o array 2
p array1 # [1, 2, 3, 4, 5, 6]

=begin

  É importante lembrar que, em Ruby, arrays podem conter elementos de tipos diferentes,
  como por exemplo strings, símbolos, inclusive outros arrays.
  Além disso, arrays em Ruby são dinâmicos, ou seja, é possível adicionar ou remover
  elementos a qualquer momento.
  Exemplo

=end

array1.push('William', :William)
p array1 # [1, 2, 3, 4, 5, 6, "William", :William]
p array1.length # aqui é impresso 8
p array1.size # aqui é impresso 8

=begin
  Perceba que o array recebe valores de tipos diferentes: inteiro, Simbolo et.
  Em Ruby não se defini array com um tipo especifico. 
  A lista de itens colocado no array, pode crescer a vontade a medida
  que é inserido novos valores.

  Quando os valores entram no array, é criado indices para acessar esses valores. 
  Os indices começam em 0.
  Veja o exemplo de acesso.
=end

p array1 [1] # aqui o que é impresso é 2
p array1 [0] # aqui o que é impresso é 1
p array1 [7] # aqui o que é impresso é :William

=begin
  Métodos Uteis quando se trabalha com array
  Exemplo:
=end

p array1.length # mostra o tamanho do array

p array1.size # mostra o tamanho do array igual o length esse é o mais usado

p array1.empty? # verifica se o array está vazio retorna tru ou false.

p array1.first # pega o primeiro valor

p array1.last # pega o último valor

=begin
  Em resumo, size e length em Ruby têm o mesmo comportamento e podem ser usados de forma
  intercambiável, mas size é mais comum e disponível em mais classes de coleções.
  
  Abaixo estou somando indices de dois array diferente
=end

array_2 = [7, 8, 9]

resultado = array1 + array_2

p resultado 
=begin
  o que vai ser impresso é :

  [1, 2, 3, 4, 5, 6, "William", :William, 7, 8, 9]

  ou seja foi acrescentado os valores do dois array em resultado
  E resultado por ter recebido os valores agora é do tipo array.
=end

p resultado.class # o que é impresso é Array
p resultado.size # 11