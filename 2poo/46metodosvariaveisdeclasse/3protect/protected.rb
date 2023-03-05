=begin

                                 protected -> protegido

Os métodos private só pode ser acessados por métodos da mesma classes
Ou métodos da subclasse desta classe que criou os métodos privados
Isso quer dizer que se eu crio uma classe e defino métodos privados nela, quando esta classe for
instanciada, esses métodos private se forem chamados por esse objeto instanciado, receberão erro.
Os métodos private não tem seu comportamento exposto pelo objeto instanciado

Ao contrario os métodos protected podem ser chamados por objetos instanciados, ou seja:
Crio uma classe e defino métodos protected nesta
Quando instanciar esta classe, os métodos protected podem ser chamados por esse objeto
instanciado e por métodos da mesma classe.

=end