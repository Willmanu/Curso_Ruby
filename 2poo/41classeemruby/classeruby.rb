=begin

Sabemos que classe é um modelo, ou uma planta de construção de casa etc.(veja a teoria no 40)
Em ruby uma classe é definida dessa forma:

# xxxxxxxx
class NomeDaCLasse
End

1º palavra class
2º em CamelCase escreva o nome da classe
3º finaliza com end
4º no meio vai seus métodos/funções e atributos etc.
5º quando se cria uma classe é por convenção por um comentário explicando o que ele faz

Segundo a convecção do Ruby:
- nomes de de variáveis são todos em minúsculos e separado por underline caso duas palavras
Exemplo: minha_varável
- nome de classe são cada palavra começando em maiúscula(Camel Case)
Exemplo: NomeDaClasse

=end

# declaração da classe
class NomeDaClasse
end


=begin

                                      Objeto
Sabemos que um objeto tem seus atributos, métodos/funções e é construído a partir da classe ()
Para construir esse objeto em Ruby se faz assim:
objeto = NomeDaClasse.new

.new é método que constrói coisas, muito importante entender isso.

=end

objeto = NomeDaClasse.new # .new é novo..criando um novo objeto a partir da classe

p objeto.object_id # imprimi 60

=begin

Neste caso temos uma palavra chamada objeto recebendo a classe, recebendo o molde, o esquema.
Dessa forma a variável objeto esta construindo a classe em memória, por conta do
método .new (.new é um método que cria o objeto, sem ele nada é criado).

Esta variável não é uma variável comum como declaramos para receber um valor como:
string, inteiros, float etc.
Esta variável objeto, agora é o "objeto" que vai receber atributos, ou seja, características
e métodos/funções que vão gerar as ações por manipular os atributos.

É importante saber que está variável não é uma variável comum quando estamos desenvolvendo.
É importante saber que é um objeto novo, criado por nós e existe para nós e nossas necessidades
e não faz parte do framework do Rails etc. é algo exclusivo nosso.

                       O Cuidado com mutabilidade de objetos
Sabemos que o id é um número de identificação única.
É uma etiqueta nos objetos que dizem tudo sobre ele, e é por ele que o sistema conhece para
que ele serve, e é por ele que o sistema mapeia o trajeto do uso desse objeto.

Quando imprimi o id do meu novo objeto, tive a resposta de que é 60.
Se eu entrar na classe e inserir algo nela, e quando pedir a impressão é provável que será o
mesmo id 60 porque se trata do mesmo objeto.

Em uma variável comum, isso não acontece sempre será um novo id se for aletrada.
Exemplo:
=end

nome = 'William'
p nome.object_id # imprimi 80

outro_nome = 'William'
p outro_nome.object_id # imprimi 100

nome = 'Pamela'
p nome.object_id # imprimi 120

=begin

Perceba que neste caso o id da varável nome é 80 e da variável outro_nome é 100, ou seja,
dois objetos strings diferentes na memória

Quando atribui um valor diferente para nome, o id muda para 120, ou seja, é um novo
objeto na memória.

Mas veja o que acontece se jogar um objeto existente dentro de uma variável.

=end

nome = outro_nome

p nome # imprimi "William"

p nome.object_id # imprimi 100


=begin

nome deixa seu valor que é "Pamela"  e assume o valor de outro_nome "William"
E deixa seu id que era '120' e assume o id de outro_nome que é '100'

veja agora este caso

=end

p nome # "William"

p outro_nome # "William"

p nome.upcase! # "WILLIAM"

p outro_nome # "WILLIAM"

=begin

Perceba que quando usei o método upcase com o !(e isso faz com que não seja criado um novo
objeto na memória, alterando o mesmo objeto, enquanto sem o ! cria um novo objeto na memória,
sem alterar objeto original) a variável outro_nome também é alterada para MAIÚSCULA, sem
ter usado o upcase! nela.

RESUMO:
Neste caso foi alterado os dois objetos que tinham o mesmo id.
O cuidado e a atenção ao trabalhar com mutabilidade de objeto é importante, para não acontecer
resultados indesejados como este, de alterar objetos que tem o mesmo id, e causar impactos
negativos no sistema.

=end