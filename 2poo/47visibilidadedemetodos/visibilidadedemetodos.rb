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

class MinhaClass
  def m1
    p 'Método 1'
  end
  
  private
  def m2
    p 'Método 2'
  end

  def m3
    p 'Método 4'
  end
end
obj = MinhaClass.new
obj.m1
obj.m2
obj.m3

