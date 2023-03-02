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

Se ao criar uma classe, não for especificado a herança desta, o Ruby automaticamente faz a
herança desta classe criada sem especificação, da classe Object do próprio Ruby. Ou seja, uma
classe não especificada sua herança, herda a classe do Ruby chamada Object automaticamente.


Class Object                Classe padrão Ruby
end


class Animal                definição da classe, como não tem especificação de herança
end                         a classe Animal recebe herança de Object

class Cachorro < Animal     Definindo class Cachorro e herdando com o < a class Animal
end


                                Ruby e hierarquia de classe

Quando chamamos um método, o Ruby verifica primeiramente se este método que foi chamado, existe
na classe Object (salvo se passado o endereço do método).
Se não encontrar o método em Object, o Ruby passa e examinar a hierarquia de classes procurando
este método. Achando o trás se não informa erro.

Digamos que temos 
=end
