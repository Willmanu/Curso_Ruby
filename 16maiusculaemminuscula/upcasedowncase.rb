=begin
  Transformar maiúsculo e minúsculo e vice-versa
Com .upcase qualquer palavra transformo em MAIÚSCULA
Com .downcase qualquer palavra transformo em MINÚSCULA

exemplo:
=end

name_minuscula = 'william'
NAME_MAIUSCULA = 'WILLIAM'

p name_minuscula
p NAME_MAIUSCULA

p '-' * 60

p name_minuscula.upcase
p NAME_MAIUSCULA.downcase

=begin
  a impressão fica assim:
  
  "william"
  "WILLIAM"
  "------------------------------------------------------------"
  "WILLIAM"
  "william"

  Observação: A maioria dos métodos em Ruby tem uma segunda opção. 
  Por exemplo para o upcase temos: .upcase ou .upcase! com exclamação
  (Isso vale também para o .downcase)
  Quando usamos usamos sem !, este cria uma nova variável com o valor
  MAIÚSCULO ou minúsculo, mantendo o valor anterior na memória.
  Usando com ! Este pega o valor da variável criada e faz a troca sem criar
  uma nova livrando a memória de um novo dado.
  exemplo:
=end

p name_minuscula.object_id # esse id é 60
p NAME_MAIUSCULA.object_id # esse id é 80

p name_minuscula.upcase.object_id # esse id é 100
p NAME_MAIUSCULA.downcase.object_id # esse id é 120

# agora usando o método com !

p name_minuscula.upcase!.object_id # esse id permaneceu 60
p NAME_MAIUSCULA.downcase!.object_id # esse permaneceu 80

# resumindo é melhor com !