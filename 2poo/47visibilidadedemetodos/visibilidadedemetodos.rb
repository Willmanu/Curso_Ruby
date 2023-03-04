=begin
                                      Visibilidade de Métodos
Visibilidade de Métodos se refere ao controle de acesso aos métodos em classe.
São regras que determinam se um método pode ser chamado um outro.
Existem três níveis de visibilidades em Ruby:
public -> público
private -> privado
protected -> protegido

                                     public -> público
Por padrão o Ruby deixa os métodos públicos. Isso quer dizer que este método pode ser
chamado de qualquer lugar dentro ou fora da classe.

                                      private -> privado

Este método só pode ser chamado de dentro de dentro da própria classe.
Significando que outros objetos não terão acesso diretamente a estes métodos quando
privados.
No entanto uma subclasse pode acessar este métodos privados, porque a subclasse recebe
herança da classe que contém os métodos privados. Por isso o acesso é concedido.
Exemplo:

=end

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

=begin

Neste caso os métodos m2 e m3 quero que sejam privados.
Perceba que antes do(s) método(s) escrevi private.

Após o end da MinhaClass inicializei o objeto e nas linhas abaixo chamei os metodo.
O resultado foi:
"Método 1"
...private method `m2' called for #<MinhaClass:0x000055df02c2f470> (NoMethodError)

O Ruby imprimiu o m1 e gerou um erro avisando que m2 é privado, e não chega a m3 porque
temos um erro. Sendo assim o Rby interrompe o resto do código para resolver esta questão.

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