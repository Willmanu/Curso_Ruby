require './2poo/46metodosvariaveisdeclasse/3protected/metodomodeloprotected'

=begin

                                 protected -> protegido

Como vimos os métodos private só pode ser acessados por métodos da mesma classes
Ou métodos da subclasse desta classe que criou os métodos privados
Isso quer dizer que se eu crio uma classe e defino métodos privados nela, quando esta classe for
instanciada, esses métodos private se forem chamados por esse objeto instanciado, receberão erro.
Os métodos private não tem seu comportamento exposto pelo objeto instanciado

Ao contrario, os métodos protected podem ser chamados por objetos instanciados, ou seja:
Crio uma classe e defino métodos protected nesta
Quando instanciar esta classe, os métodos protected podem ser chamados por esse objeto
instanciado, métodos da mesma classe e da subclasse.

Para exemplo vamos criar um classe fora deste arquivo, adicionar os métodos privados
que vimos anteriormente e um novo chamado m5 que é protected.
Aqui vamos criar uma classe para chamar os privados e novo m5 que é protected
Ficou assim no outro arquivo:
# Método modelo para testar protected com m5

class ClasseTesteProtected
  def m1
    p 'Método 1 publico todos podem me chamar que vou'
  end

  private

  def m2
    p 'Método 2 sou private só atendo os métodos da classe pai e subclasse'
  end

  def m3
    p 'Método 3 sou private só atendo os métodos da classe pai e subclasse'
  end

  protected

  def m5
    puts 'Método m5 sou protected atendo o objeto da classe pai e subclasse do pai'
  end
end

obj = ClasseTesteProtected.new
obj.m1

Porém nesta subclasse aqui abaixo, vamos instanciar um novo objeto na memória, e esse novo
objeto será a classe pai que será instanciado novamente
Será essa classe pai nova na memória aqui abaixo que vai chamar o m5 que é protected

=end

# Classe que chama os métodos private e o m5 protected
class ClasseProtected < ClasseTesteProtected
  def m4
    m2
    m3
    novo_objeto = ClasseTesteProtected.new
    puts 'Método m4'
    novo_objeto.m5
  end
end

classeprotected = ClasseProtected.new
classeprotected.m4

=begin

Veja o resultado:
"Método 1 publico todos podem me chamar que vou"
"Método 2 sou private só atendo os métodos da classe pai e subclasse"
"Método 3 sou private só atendo os métodos da classe pai e subclasse"
Método m4
Método m5 sou protected atendo o objeto da classe pai e subclasse do pai

O método m2 que é publico vem de qualquer jeito
O m2 e m3 que é privado atende a subclasse como já vimos

O que é novo aqui é que estou criando um novo objeto na memória chamado novo_objeto
igual o arquivo criado fora desse como vimos, ou seja, este novo_objeto pertence a mesma
hierarquia, é o pai criado aqui nesta classe.

Após a chamada de m3 esse novo_objeto chama m5 e ele vem.

Precisamos entender que o que chama m5 é um novo objeto.
Se este novo objeto chama-se m2 ou m3 que são privados, teríamos um erro, porque é uma classe
instanciada que chamaria m2 ou m3, e estes não obedecem uma classe instanciada.
Perceba que o protected atendo o chamado de uma classe instanciada da mesma hierarquia.
Se fosse um objeto de outro contexto não aceitaria o chamado e geraria erro.
=end
