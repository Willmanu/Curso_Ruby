=begin
                            Criar uma conta Bancaria
-Criar uma classe responsável para representar a conta bancaria

- Criar um método que permita transferir valor entre contas usando:
Conta1.transferir(conta2,100) onde 100 é o valor que eu desejo transferir.

-Plus: Criar um tipo de conta em que existe uma tarifa para se transferir dinheiro

=end

# Esta representa uma conta bancaria
class ContaBancaria
  def dadospessoais(nome, agencia, conta)
    @nome = nome
    @agencia = agencia
    @conta = conta
  end

  def conta1.transferir(contadestino, valortransferir)
    @contadestino = contadestino
    @valortransferir = valortransferir
  end
end

contabancaria = ContaBancaria.new