=begin
                            Criar uma conta Bancaria
-Criar uma classe responsável para representar a conta bancaria

- Criar um método que permita transferir valor entre contas usando:
Conta1.transferir(conta2,100) onde 100 é o valor que eu desejo transferir.

-Plus: Criar um tipo de conta em que existe uma tarifa para se transferir dinheiro

=end

# Esta representa uma conta bancaria
class ContaBancaria
  def initialize
    @nome = ''
    @agencia = ''
    @conta = ''
    @contadestino = ''
    @valortransferir = ''
  end

  def dadospessoais
    puts 'Digite seu nome completo'
    @nome = $stdin.gets.chomp

    puts 'Digite sua agencia'
    @agencia = $stdin.gets.chomp

    puts 'Digite o nº da sua conta'
    @conta = $stdin.gets.chomp

    puts 'Qual é a conta destino'
    @contadestino = $stdin.gets.chomp

    puts 'Qual valor vc deseja transferir para essa conta'
    @valortransferir = $stdin.gets.chomp.to_f
  end
end

