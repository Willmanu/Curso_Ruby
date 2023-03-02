=begin
                                          Herança
Herança é quando uma classe herda as funcionalidades de outra.
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

=end
