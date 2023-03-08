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

begin
  conta_william.transferir(conta_pessoa2, 60) # teste que tem que falhar
rescue StandardError => e
  p e.message
end


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

Os atributos do objetos conta_william que é o ContaComTaxa vão para a classe ContaComTaxa
veja lá.

Quando voltam para cá atualizados o programa imprimi na tela as atualizações mostrando que um
foi debitado e o outro creditado

Após imprimir o programa lê a linha que conta_william chama o método transferir novamente
levando o objeto conta_pessoa2 e um novo valor de transferencia que é 60 reais.
Lembre-se que conta_william e conta_pessoa2 estão atualizadas, ou seja, então indo para
transferir de ContaComTaxa atualizadas.
Vamos lá ver.
Observação:
Este bloco com rescue faz parte do tratamento de erro que esta em ContaComTaxa, no bloco
condicional temos um método chamado raise que gera um TypError.
Este TypeError quando executado, interrompe o programa e apresenta o erro. Se tiver mais código
depois desta linha, por conta do TypeError não será lido esta linha. Então cria-se este bloco
rescue que armazena esta mensagem de erro e imprime esta mensagem sem interromper as demais
linhas de código.

Resultado da impressão baixo:

 "A conta do William"
48
"A conta do pessoa2"
250
Saldo insuficiente! Por favor verifique o valor em sua conta
Você está tentando transferir 60, porém em sua conta tem 48
"exception class/object expected"
=end
