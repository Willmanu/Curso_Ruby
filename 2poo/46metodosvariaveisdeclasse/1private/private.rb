=begin
                                      Visibilidade de Métodos
Visibilidade de Métodos se refere ao controle de acesso aos métodos em classe.
São regras que determinam se um método pode ser chamado por um outro.
Existem três níveis de visibilidades em Ruby:
public -> público
private -> privado
protected -> protegido

                                     public -> público
Por padrão o Ruby deixa os métodos públicos. Isso quer dizer que este método pode ser
chamado de qualquer lugar dentro ou fora da classe.

                                      private -> privado

Este método só pode ser chamado de dentro da própria classe.
Significando que outros objetos não terão acesso diretamente a estes métodos quando
privado.
No entanto uma subclasse pode acessar este método privado, porque a subclasse recebe
herança da classe que contém os métodos privados. Por isso o acesso é concedido.
Exemplo:

=end
=begin
# o método abaixo foi comentado para funcionar o próximo, para testar esse o descomente
# testando o private
class MinhaClass
  def m1
    p 'Método 1'
  end

  private

  def m2
    p 'Método 2'
  end

  def m3
    p 'Método 3'
  end
end
obj = MinhaClass.new
obj.m1
obj.m2
obj.m3
=end
=begin

Neste caso os métodos m2 e m3 quero que sejam privados.
Perceba que antes do(s) método(s) escrevi private.

Após o end da MinhaClass inicializei o objeto e nas linhas abaixo chamei os metodo m2 e m3.
O resultado foi:
"Método 1" -> imprimiu o m1
...private method `m2' called for #<MinhaClass:0x000055df02c2f470> (NoMethodError)

O Ruby imprimiu o m1 e gerou um erro avisando que m2 é privado, e não chega a m3 porque
temos um erro. Sendo assim o Ruby interrompe o resto do código para resolver esta questão.


	                   A classe chamando os próprios método private

O que vou fazer agora é inserir o m2 e m3 em def m1, e ver se essa classe chama esses
métodos que são private
=end

=begin
# este foi comentado para ver se o abaixo funciona se quiser testar esse descomente-o
# vendo se a classe chama os métodos privados
class MinhaClass
  def m1
    p 'Método 1'
    m2
    m3
  end

  private

  def m2
    p 'Método 2'
  end

  def m3
    p 'Método 3'
  end
end
obj = MinhaClass.new
obj.m1
obj.m2
obj.m3
=end

=begin

Veja a impressão:
"Método 1"
"Método 2"
"Método 3"
private method `m2' called for #<MinhaClass:0x000056089861e468> (NoMethodError)

Como esperado o Ruby imprimi o m2 e m3 que estão dentro do método m1, porque é a própria classe
quem está chamando os métodos private. Provando assim que métodos private quando chamados pela
própria classe eles respondem.

E o chamado de obj.m2 e obj.m3 não consegue acessar o métodos private.


                     Deixando somente o m2 private e tratando erro para que m3 seja impresso

Se eu quero que somente o m2 seja privado preciso indicar qual é o que será privado
Para isso após o end de m2 e antes de inciar o método m3, escreve-se a palavra:
private :m2
E quando for chamar o m2 precisamos criar um bloco de rescue para que o programa não 
interrompa a impressão do m3.
Exemplo:

=end

# só o método m2 será private
class MinhaClass2
  def m1
    puts 'Método m1'
  end

  def m2
    puts 'Método m2'
  end

  private :m2

  def m3
    puts 'Método 3'
  end
end

obj = MinhaClass2.new
obj.m1

begin
  obj.m2
rescue NoMethodError => e
  p e.message
end

obj.m3

=begin

Após iniciar o objeto, perceba que chamei o m2 entre o begin e o end, ou seja, dentro de um
bloco chamado rescue, para que o programa não seja interrompido.
Exemplo

begin
  obj.m2
rescue NoMethodError => e
  p e.message
end

Isso é uma construção do Ruby que usa o bloco begin-rescue para capturar erros e tratá-los
de forma adequada.
O bloco begin-rescue é usado para capturar esse erro e executar um bloco de código alternativo
em vez de interromper o programa com uma exceção não tratada.

O bloco begin define o início do bloco de código a ser executado.
Em seguida, é feita a chamada ao método m2 no objeto
Se essa chamada causar um erro, a execução do programa será interrompida e o bloco rescue será
executado em vez disso.
O bloco rescue define o código a ser executado se ocorrer um erro do tipo especificado.
No caso, o tipo de erro especificado é NoMethodError. O operador => é usado para associar a
exceção capturada com uma variável local e.
Essa variável contém informações sobre a exceção que foi capturada, como a mensagem de erro.
Dentro do bloco rescue, a mensagem de erro é impressa usando o método p, que exibe o conteúdo
da variável e.message no console.
Depois que o bloco rescue é executado, o programa continua a ser executado normalmente, a
partir da linha seguinte à que causou o erro.
No caso, a execução continuaria com a chamada ao método m3.

Veja a impressão:

Método m1
"private method `m2' called for #<MinhaClass2:0x000055dd3dcac090>"
Método 3

Imprimiu o Método m1
gerou o erro de m2 através do bloco rescue
Imprimiu o Método m3

                   Vendo se subclasse chama os métodos private de MinhaClasse
Para isso criei um diretório chamado subclasseacessandoprivate, para testar essa possibilidade
Veja esse teste lá.

=end

