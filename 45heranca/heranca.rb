=begin
                                          Herança
Herança é para reuso de funcionalidade.
Quando uma classe herda as funcionalidades de outra, chama-se esse fato de herança.

No Ruby uma classe herda apenas de uma outra. Herança múltiplas não é permitido no Ruby como
existe em outras linguagem
Para definir uma herança é usado o símbolo de menor < para informar de qual classe ela vai
herdar.
Exemplo:


class Animal                definição da classe
end

class Cachorro < Animal     Definindo class Cachorro e herdando com o < a class Animal
end

Suponhamos que esta classe Animal tenha um método chamado respirar. Quando a classe Cachorro
herdar a classe Animal, este método respirar fará parte da classe Cachorro.



	                                 Class Object do Ruby

A classe Object é a raiz da hierarquia de classes em Ruby e é a superclasse de todas as
outras classes em Ruby. Isso significa que todas as outras classes em Ruby são subclasses
da classe Object e, portanto, herdam automaticamente todos os métodos e atributos definidos
na classe Object.

A classe Object é muito importante em Ruby porque define muitos métodos úteis que podem ser
usados ​​por todas as outras classes em Ruby. Alguns exemplos de métodos definidos na classe
Object incluem:

to_s: converte o objeto para uma string
inspect: retorna uma string que descreve o objeto
eql?: compara o objeto com outro objeto para ver se eles são iguais
equal?: compara o objeto com outro objeto para ver se eles são exatamente o mesmo objeto
hash: retorna um valor hash para o objeto

Além desses métodos, a classe Object também define métodos como initialize, new e class,
que são usados ​​para criar objetos em Ruby.

Em resumo, a classe Object é a raiz da hierarquia de classes em Ruby e define muitos métodos
úteis que podem ser usados ​​por todas as outras classes em Ruby. Todos os objetos em Ruby
herdam automaticamente todos os métodos e atributos definidos na classe Object.


Se ao criar uma classe, não for especificado a herança desta, o Ruby automaticamente faz com
que a herança desta classe criada sem especificação, seja a classe Object do próprio Ruby.


Class Object                Classe padrão Ruby
end


class Animal                definição da classe, como não tem especificação de herança
end                         a classe Animal recebe herança de Object

class Cachorro < Animal     Definindo class Cachorro e herdando com o < a class Animal
end


                                Ruby e hierarquia de classe

Quando chamamos um método, o Ruby verifica primeiramente se este método que foi chamado, existe
dentro da classe onde houve a chamada.
Se não encontrar nessa classe onde houve a chamada, sobe para a próxima classe pai se
houver, se não verifica dentro da classe Object do Ruby. Se não achar nada retorna erro.
Exemplo:

Temos a classe Cachorro e precisamos do método respirar, quando chamamos o método, o Ruby
verifica se existe o método dentro da classe Cachorro primeiro. Não existindo o Ruby vai
procurar dentro da classe Animal, se não tiver vai para classe Object porque é a ultima.
Enquanto houver classe superior o Ruby vai procurando, se não existir, o método o Ruby joga uma
mensagem de exceção dizendo que o método não existe, não encontrado etc.



                                   Exercício de exemplo com Sensor

No geral, todo tipo de sensor é um dispositivo que detecta determinados estímulos e desencadeia
reações específicas a partir disso.

Imaginemos uma classe que trata do comportamento de um sensor.
Nesta classe temos 3 método para:
-instala o sensor
-iniciar o sensor
-coletar métricas genéricas
exemplo abaixo:

=end

# Sensor genérico
class Sensor
  def instalar
    puts 'Estou instalando'
  end

  def iniciar
    puts 'Estou inciando'
  end

  def coletar_metricas
    puts 'Estou coletando'
    puts 'Estou analisando as métricas'
  end
end

sensor = Sensor.new
sensor.instalar
sensor.iniciar
sensor.coletar_metricas


=begin

Esse acima é um sensor genérico, inicializado e pedi algumas impressões chamando
os métodos e temos os resultados:

Estou instalando
Estou inciando
Estou coletando

Agora abaixo farei um outro senso de solo que recebe como herança o sensor genérico.
=end

# sensor do solo
class SensorSolo < Sensor
  def coletar_metricas
	puts 'Analisando métricas do solo'
    puts 'Coletando métricas do solo'
  end
end

sensorsolo = SensorSolo.new
sensorsolo.coletar_metricas

=begin
A classe sensorsolo e a classe sensor são diferentes porque o sensorsolo analisa o solo.
Como a classe sensor é genérica podemos reutilizar informações dela em sensorsolo. A ideia é
reutilizar os métodos instalar é iniciar porém, o método coletar_metricas precisa ser diferente
porque sensorsolo coleta métricas do solo.
Então eu herdo a classe sensor em sensorsolo o método coletar_metricas deste sensorsolo vai
subscrever a sensor, ou seja, o método coletar_metricas de sensor não será impressa.
Então a impressão fica:

Estou instalando
Estou inciando
Analisando métricas do solo
Coletando métricas do solo

As duas primeiras impressões são da classe sensor e as outras são de sensorsolo.
vejo este outro sensor de temperatura.

=end

# sensor de temperatura
class SensorTemperatura < Sensor
  def coletar_metricas
    puts 'Analisando métricas de temperatura'
    puts 'Estou coletando métricas de temperatura'
  end
end

sensortemperatura = SensorTemperatura.new
sensortemperatura.coletar_metricas

=begin

sensortemperatura herda sensor e também subscreve o método coletar_metricas para informar
o que lhe compete que é sobre temperatura
veja a impressão:

Estou instalando
Estou inciando
Analisando métricas de temperatura
Estou coletando métricas de temperatura

As 2 primeiras impressões são se sensor classe pai e as outras duas são de sensortemperatura
classe filha

Resumo: o propósito de herança é reutilizar código que são genéricos.

Outra coisas o correto deste exercício é fazer cada classe em seu repositório e usar o require
para chamar as classes.
=end
