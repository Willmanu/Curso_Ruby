=begin
                            Métodos Variáveis de classe pessoais
Assim como podemos criar classes pessoais, ou seja, classe que não fazem parte do Ruby, mas
são classes nossas criadas com Ruby, podemos também criar métodos e variáveis pessoais.

As classes e métodos que vi anteriormente são dependentes do objeto, ou seja, para
funcionarem o objeto precisa existir, ou seja, ser instanciado com o método .new

Esses métodos e variáveis pessoais não precisam de que o objeto em sim seja instanciado.

São muito uteis quando temos funcionalidades que não dependem do estado do objeto, quando
falo estado quero dizer este objeto ser instanciado ou não.
Exemplo:
 pessoa.gerar

 Esse .gerar, pode construir uma nova pessoa, sem depender da existência do objeto pessoa
para chama-lo.
No raciocínio comum, este objeto pessoa precisaria estar instanciado, e o método .gerar
precisaria ser do Ruby, assim como .new que existe no Ruby e instancia na memória o objeto.


                             Definindo métodos pessoais

Os métodos do Ruby são criados usando a palavra def, depois o nome.
Os métodos pessoais são criados usando a palavra def, depois a palavra self e logo após o
nome do método
exemplo:

class Pessoa
  def self.gerar
    bloco de código
  end
end

O termo "self" é uma abreviação da palavra inglesa "selfhood", que se refere à qualidade
ou estado de ser um indivíduo ou objeto distinto e autônomo.
Como tudo no Ruby é um objeto, essa palavra é aplicada para se referir ao objeto que está
sendo manipulado no momento. Dizendo que este é um objeto próprio de seu construtor, que
não é algo que é do Ruby, mas foi feito com o Ruby e tem suas características pessoais.
É como se fosse uma etiqueta que assinalá um objeto, dizendo que este é único, distinto e
pessoal.

No caso o método .gerar é único, distinto e pessoal.

Este método .gerar de exemplo só está disponível para essa classe, e não para as instancias
de um objeto.
Exemplo:
se instanciar a classe pessoa -> pessoa = Pessoa.new
e chamar o método .gerar -> pessoa.gerar
recebo um erro.
Então métodos de classe, ou seja, métodos próprios não podem ser chamados em objetos
específicos.

                                  Definindo variáveis pessoais
As variável de classe, ou seja, varáveis pessoais são reconhecidas com 2 arrobas
no inicio do nome.
exemplo:
@@variavel_da_classe_pessoa

Os métodos definidos com self, ou seja, métodos pessoais conseguem gravar nesta variáveis.

Como foi dito os métodos de classe, próprios (self) não usam estado de objeto.
Estado do objeto seria estar existindo na memória.




=end



