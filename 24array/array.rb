=begin

  Enquanto uma variável guarda um valor, o Array guarda mais de um podendo até com ele
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
  Para incluir valor no array se faz de duas formas:
  nome_array << valor
  ou 
  nome_array.append(valor)
=end

array_1 << 1 # ao inserir mais de um valor inicie com [] e separe por virgula
array_1.append(2)
array_1 << :William
p array_1 # aqui é impresso [1, 2, :William]
p array_1.length # aqui é impresso 3
p array_1.size # aqui é impresso 3

=begin
  Perceba que o array recebe valores de tipos diferentes: inteiro, Simbolo et.
  Não se defini array com um tipo especifico em Ruby. 
  A lista de itens colocado no array, pode crescer a vontade a medida
  que é inserido novos valores.

  Quando os valores entram no array, é criado indices para acessar esses valores. 
  Os indices começam em 0.
  Veja o exemplo de acesso.
=end

p array_1 [1] # aqui o que é impresso é 2
p array_1 [0] # aqui o que é impresso é 1
p array_1 [2] # aqui o que é impresso é :William

=begin
  Métodos Uteis quando se trabalha com array
  Exemplo:
=end

p array_1.length # mostra o tamanho do array

p array_1.size # mostra o tamanho do array igual o length esse é o mais usado

p array_1.empty? # verifica se o array está vazio retorna tru ou false.

p array_2.first # pega o primeiro valor

p array_1.last # pega o último valor

=begin
  Em resumo, size e length em Ruby têm o mesmo comportamento e podem ser usados de forma
  intercambiável, mas size é mais comum e disponível em mais classes de coleções.
  
  Abaixo estou somando indices de dois array diferente
=end

array_2 = [1, 2, 3]

resultado = array_1 + array_2

puts resultado 
=begin
  o que vai ser impresso é :
  1
  2
  William
  1
  2
  3
  ou seja foi acrescentado os valores do dois array em resultado
  E resultado por ter recebido os valores agora é do tipo array.
=end

p resultado.class # o que é impresso é Array
p resultado.size