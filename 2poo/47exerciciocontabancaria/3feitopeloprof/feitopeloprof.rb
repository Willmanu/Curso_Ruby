# Classe modelo conta bancária
class ContaBancaria
  def initialize(proprietario, valorinicial)
    @proprietario = proprietario # William
    @valorinicial = valorinicial # 100
  end

  def transferir(pessoa2, valor_transferencia)
    # logica de transferencia

    if @valorinicial >= valor_transferencia # vendo se tem saldo para transferencia
      # consigo
      debitar(valor_transferencia)
      pessoa2.creditar(valor_transferencia)
    else
      # não faz nada
      puts 'Saldo insuficiente! Por favor verifique o valor em sua conta'
      puts "Você está tentando transferi #{valor_transferencia}, porém em sua conta tem #{saldo}"
    end
  end

  def saldo
    @valorinicial
  end

  def debitar(valor_para_debitar)
    @valorinicial -= valor_para_debitar
  end

  private :debitar

  def creditar(valor_para_creditar)
    @valorinicial += valor_para_creditar
  end

  protected :creditar
end

=begin

Quando os atributos de conta_william e o objeto conta_pessoa2 entra aqui em ContaBancaria o
método initialize cria as variáveis de objeto (as que estão com o @) e recebe o proprietario
da ContaComTaxa que é o William e o valor inicial que ele tem em conta, que vieram para cá como
parâmetro.

O método transferir recebe o objeto conta_pessoa2 com os seus atributos que é: a pessoa que vai
receber a transferencia e o valor que ela tem em conta. Ele recebe também o valor de transferencia
que o william vai fazer.
Neste momento acontecem dua coisa:

1º o método transferir verifica se o valor que o william tem na conta é maior ou igual ao
valor_transferencia passados por parâmetro
Se for verdadeiro chama o método debitar e este vai levando o valor de transferencia que é
50 reais
No método debitar temos o valor inicial da conta_william que é 100 reais, sendo retirado o
valor de transferencia que é o 50 reais sendo assim valor inicial retorna com 50 restante para
ContaComTaxa

Após isso sendo verdadeiro o objeto Conta_pessoa2 que aqui esta na variável pessoa2 com seus
atributos, chama o método creditar. E o initialize pega os atributos de pessoa2.
O método creditar pega a variavel valorinicial do initialize, que contém o valor em conta da
pessoa que vai receber a transferencia, e acrescenta nesta o valor_transferencia que chega aqui
por parâmetro e retorna para o método transferir
=end