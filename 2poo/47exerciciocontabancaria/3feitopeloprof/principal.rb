require './2poo/47exerciciocontabancaria/3feitopeloprof/feitopeloprof'

conta_william = ContaBancaria.new('William', 100)

conta_pessoa2 = ContaBancaria.new('pessoa2', 200)

conta_william.transferir(conta_pessoa2, 50)

p 'A conta do William'
p conta_william.saldo   # quando transferi 50 tem que restar 50

p 'A conta do pessoa2'
p conta_pessoa2.saldo   #  aqui que é 250 recebendo 50 tem que ficar 300


# caso de teste de conta sem saldo
conta_william.transferir(conta_pessoa2, 50)