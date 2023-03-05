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
# o método abaixo foi comentado para funcionar o próximo, para testar esse descomente
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

Após o end da MinhaClass inicializei o objeto e nas linhas abaixo chamei os metodo.
O resultado foi:
"Método 1" -> imprimiu o m1
...private method `m2' called for #<MinhaClass:0x000055df02c2f470> (NoMethodError)

O Ruby imprimiu o m1 e gerou um erro avisando que m2 é privado, e não chega a m3 porque
temos um erro. Sendo assim o Ruby interrompe o resto do código para resolver esta questão.


	                   A classe chamando os próprios método private


=end

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

class Subclasse < MinhaClass
  def m4
  	puts 'Método 4'
  	m1
  	m2
  	m3
  end
end

=begin

	                Definindo somente um método como private e tratando erro

Se eu quero que somente o m2 seja privado preciso indicar qual é o que será privado,
escrevendo private na frente de def deste método, e tratar o erro para oque o Ruby não
interrompa a impressão do m3, porque esse eu quero que seja impresso.
Exemplo:
=end

# só o método m2 será private
class MinhaClass2
  def m1
    puts 'Método m1'
  end

  private def m2
	puts 'Método m2'
  end

  def m3
	puts 'Método 3'
  end
end

class2 = MinhaClass2.new
class2.m1

begin
  class2.m2
rescue NoMethodError => e
  p e.message
end

class2.m3

=begin

Escrevei o private a frente do def do m2 e tornei ele privado.

Após iniciar o objeto, perceba que chamei o m2 entre o begin e o end, ou seja, dentro de um
bloco chamado rescue, para que o programa não seja interrompido.
Exemplo

\begin
rescue NoMethodError => e
p e.message
\end

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


=end
