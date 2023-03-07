require './2poo/47exerciciocontabancaria/3feitopeloprof/feitopeloprof'

conta_william = ContaBancaria.new('William', 100)

conta_pessoa2 = ContaBancaria.new('pessoa2', 200)

conta_william.transferir(conta_pessoa2, 50)

p conta_william.saldo   # 50
p conta_pessoa2.saldo   # 250
