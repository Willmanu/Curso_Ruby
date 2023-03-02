=begin
                                         require
require significa exigir ou requerer-> tanto uma quanto a outra para este caso o que se
precisa é: que um código que esta em outro repositório seja usado aqui neste código.
Exemplo:

Imaginemos que para uma loja acabamos de criar uma classe que calcula o valor a ser pago
de um produto comprado
Para este produto precisa-se calcular os impostos e inserir esses imposto ao valor.
Então temos uma classe que faz o calculo do produto e precisamos ter outra classe que gera
os impostos, ou seja, temos um código da classe CalculoDoProduto e outra classe com código
CalculoDeImpostos.
Quando o cliente clicar no botão gerar o pagamento, a classe CalculoDoProduto precisa chamar
a classe CalculoDeImpostos, passar os valor do produto e sua descrição para essa classe
CalculoDeImpostos, fazer os cálculos dos impostos e retornar com o valor a ser pago para
a classe CalculoDoProduto. O que esta vai apresentar ao cliente o que deve ser pago com todos
os impostos descritos.
Bom, para uma classe chamar outra classe se faz necessário o require.

Para um exemplo de uso require, criei essa classe abaixo, chamada Carro, que esta em outro
diretório e vai receber modelo, ano e o dono.

# recebe atributos e imprimi
class Carro
  def initialize(modelo, ano, dono)
    @modelo = modelo
    @ano = ano
    @dono = dono
  end

  def carro
    p "O modelo é:#{@modelo}, o ano é:#{@ano}, o dono é:#{@dono}"
  end
end

Aqui neste estudo vou ciar o objeto carro, passar esse valores para a classe Carro,
usando o require. O que a classe Carro vai retorna aqui a impressão.
Resumindo:
tenho um código aqui, que precisa de um outro código que esta em outro repositório.
Exemplo:

=end

require './classcarro/carro' # 1º

objetocarro = Carro.new('Chevrolet', '2002', 'William P. Silva') # 2º
objetocarro.carro # 3º

=begin

1º escreve o require passando o endereço de onde esta a classe que vai receber os valore
passados e fazer o retorno.
2º criar o objetocarro e passar os valores
3º chama o método que vai fazer e retornar a impressão

lembre se:
./ -> representa o diretório atual
classcarro -> é nome do repositório que esta a classe Carro
/carro -> é o nome do método que esta dentro da classe Carro que faz a impressão.

Aqui eu criei uma minha classe para fazer uso dela.
No Ruby existe classe feitas que fazem outros tipos de coisas que podemos chamar com o require
exemplo é a classe: 'action_view' que tem os métodos NullViewContext e NullLookupContext
que fazem a representação de um número em uma moeda de um pais
exemplo se digitarmo 100 esta classe 'action_view' com seus métodos fazem isso-> R$ 100,00
representando a moeda Brasileira o Real, mas faz a representação de moedas de outras países.


	                Segue abaixo uma descrição técnica do que é o require
Em Ruby, require é uma palavra-chave usada para carregar ou importar, bibliotecas ou módulos
externos que contém configurações de classes, métodos e outras funcionalidades reutilizáveis
no nosso código.
Quando se usa o require, o interpretador Ruby procura o arquivo especificado na variável
$LOAD_PATHe carrega o conteúdo desse arquivo para dentro do seu programa.

A variável $LOAD_PATHé uma variável global que contém uma lista de diretórios em que o Ruby
procura por arquivos quando você usa require. Cada diretório na lista é separado por dois
pontos no sistema Unix ou por ponto e virgula no sistema Windows.

Por padrão, $LOAD_PATHinclui o diretório atual e os diretórios padrão do Ruby, como
/usr/local/lib/ruby/3.0.0, onde as bibliotecas padrão do Ruby são mantidas. No entanto,
você pode adicionar seus próprios diretórios à lista $LOAD_PATHse tiver bibliotecas ou
módulos personalizados que deseja usar em seu programa.

Ao usar require, você pode especificar um caminho relativo ou absoluto para o arquivo que
deseja carregar. O interpretador Ruby procurará o arquivo no $LOAD_PATHe carregará seu
conteúdo para dentro do seu programa. Se o arquivo não puder ser encontrado em nenhum
diretório no $LOAD_PATH, o Ruby gerará um erro.

=end