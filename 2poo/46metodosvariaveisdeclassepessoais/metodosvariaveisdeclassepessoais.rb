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


                             Definindo métodos e variáveis pessoais

Os métodos do Ruby são criados usando a palavra def, depois o nome.
Os métodos pessoais são criados usando a palavra def, depois a palavra self e logo após o
nome do método
exemplo:

class pessoa
  def self.gerar
    bloco de código
  end
end

=end



