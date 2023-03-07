=begin
 Lembre-se que os valores de conta_william vieram para cá, quando ContaComTaxa foi instanciado
 na memória
 Quando conta_william chama o método transferir, é passado por parâmetro o objeto conta_pessoa2
 com seus atributos que são nome da conta que vai receber a transferencia e o valor que este tem
 em conta, e o atributo de conta_william que é o valor a ser transferido de 50 reais

 Aqui este método transferir levas esse valores para ContaBancaria
veja lá.

 Quando o método transferir retorna aqui ele lê o if e se o saldo for maior ou igual o valor da
 transferencia, o programa entra no super e trás para cá os valores atualizados.
 Sendo verdadeiro o estado dos valores atuais chama debitar levando 2 e lá retira do valor atual
mais 2 deixando com 48

Após isso parte para retornar a classe principal com os valores atualizados tanto de
conta_william como conta_pessoa2.
veja lá.

Aqui novamente no método transferir com o objeto pessoa2 atualizada e um novo valor de
60 reais de transferencia, vai para ContaBancaria com esse atributo de 60 e o objeto pessoa2
veja lá
=end

# Esta classe trata de cobrar uma taxa de transferencia
class ContaComTaxa < ContaBancaria
  def transferir(pessoa2, valor_transferencia)
    if saldo >= valor_transferencia
      super
      debitar(2)
    else
      raise puts "Saldo insuficiente! Por favor verifique o valor em sua conta\n"\
      "Você está tentando transferi #{valor_transferencia}, porém em sua conta tem #{saldo}"
    end
  end
end
