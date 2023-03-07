# O propósito aqui e fazer uma transferencia de uma conta para outra

require './2poo/47exerciciocontabancaria/3feitopeloprof/feitopeloprof'
require './2poo/47exerciciocontabancaria/3feitopeloprof/contacomtaxa'

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
conta_pessoa2 representa a pessoa que vai receber a transferencia, e recebe a ContaBancaria que
é onde tudo vai acontecer.
Esta ContaBancaria foi instanciada com os valores da pessoa que vai receber a transferencia,
ou seja, recebe o dono da conta que vai receber a transferencia e quanto este tem em conta

O conta_William que é a ContaComTaxa chama um método transferir de ContaBancaria, com o
objeto conta_pessoa e o valor de transferencia de 50 reais.
Isso significa que o método transferir vai receber um objeto instanciado com valores.

Os os atributos do objetos conta_william que é o ContaComTaxa vão para a classe ContaComTaxa
veja lá.

=end