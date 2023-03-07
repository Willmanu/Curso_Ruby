require './2poo/47exerciciocontabancaria/3feitopeloprof/feitopeloprof'
require './2poo/47exerciciocontabancaria/3feitopeloprof/contacomtaxa'

=begin
O propósito aqui e fazer uam transferencia de uma conta para outra

=end
conta_william = ContaComTaxa.new('William', 100)

conta_pessoa2 = ContaBancaria.new('pessoa2', 200)

conta_william.transferir(conta_pessoa2, 50)

p 'A conta do William'
p conta_william.saldo   # quando transferi 50 dos 100 tem que restar 48 porque 2 reais são taxas

p 'A conta do pessoa2'
p conta_pessoa2.saldo   #  aqui que é 250 recebendo 50 tem que ficar 300


# caso de teste de conta sem saldo
conta_william.transferir(conta_pessoa2, 60) # teste que tem que falhar
p 'A conta do William'
p conta_william.saldo

=begin

Neste arquivo principal iniciamos a ContaComTaxa e ContaBancaria
ContaComTaxa tem esse nome porque será cobrado uma taxa de transferencia pela transferencia
ContaComTaxa recebe por parametro o nome do dono da conta e o valor que ele tem em conta
ContaBancaria recebe o dono da conta que vai receber a transferencia


=end