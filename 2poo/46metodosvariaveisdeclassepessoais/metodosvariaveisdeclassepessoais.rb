=begin
                            Métodos e Variáveis de classe
Os métodos e variáveis que vimos anteriormente são feitos para o objeto.
Neste casso vamos criar métodos e variáveis para a classe.

Os método e variáveis para a classe, são recursos que permitem que as classes tenham comportamentos e
estados compartilhados, entre todas as instâncias.
As classes e métodos  dos objetos, ou seja, de instancia, são dependentes do objeto.
Para funcionarem no objeto, o mesmo precisa existir, ou seja, ser instanciado com o método .new

Aqui a palavra instancia é o objeto em si que existe na memória.

Os métodos e variáveis de classe são independentes, não precisam que o objeto em si seja instanciado
para funcionarem.

São muito uteis quando temos funcionalidades que não dependem, se o objeto está instanciado
Exemplo:

 pessoa.gerar
 
Sabemos que o . é para chamar um método e realizar sua ou suas ações.
Esse .gerar, tem como ação o poder de construir uma nova pessoa.


                             Definindo métodos de classe

Os métodos do Ruby são criados usando a palavra def, depois o nome.
Exemplo:
def nome_metodo
  bloco de código
end

Os métodos de classe são feitos usando a palavra def, depois a palavra self e logo após o nome do
método
exemplo:
=end

# fazendo método de classe
class Pessoa
  def self.gerar
    p 'Este é o meu método de classe'
  end
end

Pessoa.gerar # chamando o método

=begin

Quando o método da classe pessoa é chamado a impressão é:
Este é o meu método de classe

Se instanciarmos esta classe, o Ruby informa que o método gerar não existe.
Exemplo:
# exemplo de instanciar um método de classe
class Pessoa1
  def self.gerar
  	  p 'Este é o meu método de classe'
  end
end

pessoa = Pessoa.new
pessoa.gerar
=end



=begin

A variável pessoa recebe a instancia da classe Pessoa
Logo após chamamos o método da classe .gerar e o Ruby entende que 'self.gerar', é uma sintaxe para criar
método de classe e nos retorna a seguinte mensagem:

undefined method `gerar' for #<Pessoa:0x0000559eee6b3bd0> (NoMethodError)
Aqui 'undefined method `gerar' for' que dizer que não á definição para o método.
Aqui Pessoa:0x0000559eee6b3bd0 é o id do objeto Pessoa que foi criado.

alterando o código para gerar o objeto a partir do método da classe fica assim:

=end

# fazendo a instancia com método .gerar de classe
class Pessoa2
  def self.gerar
    p 'Este é o meu método de classe'
    Pessoa2.new
  end
end

pessoa2 = Pessoa2.gerar
p pessoa2

=begin

O resultado é:
"Este é o meu método de classe"  imprimiu a mensagem
#<Pessoa2:0x000055d3d27c6c48>    e gerou o id do objeto, ou seja construiu o objeto através do método


                                  Definindo variáveis pessoais
A variável de classe é reconhecida com 2 arrobas no inicio do nome.
exemplo:
@@nome_da_variavel

Como foi dito os métodos de classe não precisam que que o objeto esteja instanciado

Mas mesmo assim os métodos definidos com self conseguem acessar e gravar nestas variáveis.
exemplo:

=end
# examinando variáveis de classe
class Pessoa3
  @@numerodepessoas3 = 0

  def self.gerar
    @@numerodepessoas3 += 1
	p 'Cuidado com variáveis de classe, pode gerar muitos problemas'
    Pessoa3.new
  end

  def self.numero_de_pessoas
    @@numerodepessoas3
  end
end

pessoa3 = Pessoa3.gerar
pessoa3 = Pessoa3.gerar
pessoa3 = Pessoa3.gerar
pessoa3 = Pessoa3.gerar

p Pessoa3.numero_de_pessoas

=begin
Esta classe Pessoa3 tem uma variavel de classe chamada @@numerodepessoas3 que recebe o valor de 0
Tem também um método de classe .gerar que vai incrementando mais 1 a variável de classe @@numerodepessoas3
E um método de classe que funciona como getter que retorna o valor da variavel @@numerodepessoas3

O retorno disso é:

"Cuidado com variáveis de classe, pode gerar muitos problemas"
"Cuidado com variáveis de classe, pode gerar muitos problemas"
"Cuidado com variáveis de classe, pode gerar muitos problemas"
"Cuidado com variáveis de classe, pode gerar muitos problemas"
4
 Este último numero é a quantidade de vezes que chamei o método .gerar


Essas variáveis de classe tem aspecto de variáveis globais. Sendo assim podem ser acessadas
em qualquer lugar no Ruby. Por esse motivo seu uso são evitados.

por exemplo: imagine essa situação que todo vez que se rodar esse código acima, o valor vai
sendo incrementado mais 1, ou seja, é 0 e roda-> agora é 1 e roda-> agora é 2 etc.
E essas variáveis de classe são compartilhada por todo o executável do Ruby, ou seja, todos os locai
conseguem ter acesso a essa variável que esta sendo incrementada e o dois métodos.
Sendo assim podem gerar valores e situações indesejadas, se algum método acessar e tomar
para si os valores. Por esse motivo não se vê em Ruby essas variáveis.

=end



