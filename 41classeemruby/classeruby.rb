=begin

Sabemos que classe é um modelo, ou uma planta de construção de casa etc.(veja a teoria no 40)
Em ruby uma classe é definida dessa forma:

class NomeDaCLasse
End

1º palavra class
2º em camel case o nome da classe
3º finaliza com end
4º no meio vai seus métodos/funções e atributos etc.

Segundo a convecção do Ruby:
- nomes de de variáveis são todos em minúsculos e separado por underline caso duas palavras
Exemplo: minha_varável
- nome de classe são cada palavra começando em maiúscula(Camel Case)
Exemplo: NomeDaClasse

=end

class NomeDaClasse # declaração da classe
end


=begin

                                      Objeto
Sabemos que um objeto tem seus atributos, métodos/funções e é construído a partir da classe ()
Para construir esse objeto em Ruby se faz assim:
objeto = NomeDaClasse.new

.new é método que constrói coisas

=end

objeto = NomeDaClasse.new

p objeto.object_id # 60

=begin

Neste caso temos uma palavra chamada objeto recebendo a classe, recebendo o molde, o esquema.
Dessa forma a variável objeto esta construindo a classe em memória, por conta do
método .new
Esta variável não é uma variável comum como declaramos para receber um valor como:
string, inteiros, float etc.
Este agora é o "objeto" que vai receber atributos, ou seja, características e métodos/funções
que vão gerar as ações.


E seu id é o 60

=end


