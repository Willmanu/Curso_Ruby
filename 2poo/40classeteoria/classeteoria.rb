=begin
                           Classe

Classe é molde, ou seja, o modelo no qual vários objetos vão ser construído a partir desse
modelo ou o esquema ou a planta de uma construção.
Imagine construir varias casas populares. Para isso todas as casas vão ser construídas com
uma única planta.
Com relação a caneta teremos o mesmo molde para fazer varias de cores diferentes.

A caneta pronta é o objeto.


Para construir uma classe precisamos responder 3 perguntas:

1º Que coisas eu tenho?
2º Que coisas eu faço?
3º Como estou agora?

Que coisas eu tenho
Exemplo: Modelo, Cor, ponta, carga, tampa

Que coisas eu faço
Exemplo: Escrever, Rabiscar, Sublinhar, pintar, tampar, Destampar etc.

Como estou agora
Exemplo: Nova com 100% de carga tampada etc.
ou velha, com 10% de carga sem tampa etc.

Essas pergunta por sua vez em POO tem os seguintes nomes:
1º Que coisas eu tenho? == Atributos
2º Que coisas eu faço? == Métodos
3º Como estou agora? == Estado

Quando falamos de atributos falamos de:
propriedades - características - dados

Quando falamos em Métodos  falamos em:
Criar o comportamento do objeto, as ações deste por meio das funções e rotinas internas.


Quando falamos em Estado falamos em:
Em sua total versão, como se encontra o objeto agora, características atuais


RESUMINDO:

Todo objeto precisa ter:
Atributos, Métodos e Estado

Todo objeto vem a partir de uma classe

Toda classe vem de um molde, esquema ou planta etc.

                       Criando a Classe Caneta

Classe Caneta                     Atributos
  modelo: Caracteres              Modelo
  cor: Caracteres                 Cor
  ponta: Real                     Ponta
  carga: inteiro                  Carga
  tampada: Logico                 Tampada

  Método rabiscar()               Métodos
    Se (tampada) entao            Escrever
	  Escreva("Erro")             Rabiscar
	Senão                         Pintar
	  Escreva("Rabisco")          Tampar
	FimSe                         Destampar
    Método tampar()
	  tampada = verdadeiro        Estado
	FimMétodo
  FimMétodo
FimClasse

Dentro dos métodos podemos mexer com os atributos do objeto, criando assim ações para ele.

Isto apresentado é o fundamento básico para se trabalhar com POO
Nosso computador não é inteligente, não conhece um objeto, nós como programador precisamos
dizer a ele o que fazer, e ensiná-lo o que é uma caneta.

Quando for construir o objeto, primeiro o idealize e crie a classe, o molde, forma, planta etc.

                                           Instanciar

É o momento em que a classe gera o objeto.

 c1 = Nova Caneta

 Acima temos c1 representando caneta 1, que recebe uma nova classe Caneta que criamos, ou seja,
 instanciei uma nova caneta dessa forma.

 c1.cor = "Azul"
Acima estou dizendo que minha caneta em seu atributo cor vai receber a cor azul.

c1.ponta = 0.5
Acima estou dizendo que meu atributo ponta recebe a ponta de 0.5

c1.tampada = falso
Acima estou dizendo que minha caneta não esta tampada

Se não esta tampada, significa que posso rabiscar com o método rabiscar()
c1.rabiscar()

Como o mesmo molde posso criar uma nova caneta
exemplo
c2 = Nova Caneta
c2.cor = "Vermelha"
c2.ponta = 1.0
c2.tampada = falso
c2.tampar()

Resumo:
Instancio um objeto a partir de uma classe.
A classe pode ser reutilizada para fazer coisas novas

                             Abstração
A palavra abstração vem de abstrair e isso significa: observar (um ou mais elementos de um
todo), avaliando características e propriedades em separado.

Desde o começo estamos fazendo isso.
Analisando um objeto e buscando os atributos que mais importam para a criação do objeto.

Em um objeto cadastro de Aluno, não nos importa os atributos: peso, altura, cor da pele, cor
dos olhos etc.

Porém para um cadastro de Modelo, esses atributos citados sim importam.

Isso é Abstrair: retirar de um objeto atributos desnecessários e usar somente os que importam.

=end