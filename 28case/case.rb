=begin

  Em Ruby, "case" é uma estrutura de controle condicional que permite testar uma variável contra uma
  série de valores possíveis e executar um bloco de código correspondente ao primeiro valor que
  corresponde.

  Sitaxe:
  Abre com a palavra case
  Fecha com a palavra end
  No meio dos dois temos o when

  case significa -> caso - a sua frente vai o titulo do caso no qual é o motivo dele existir
  when significa -> quando - a sua frente vai a ação deacordo com a opção escolhida.
  end significa -> fim

  Podemos ter entre a estrutura um else, caso nenhuma das opçoes sejam atendidas
  para finalaza.

  Para exemplo de uso, imagine uma escola que vende curso de programação e preciso escolher
  uma opção. Quando escolher essa informção entra no case e imprimi uma mensagem. 

=end

linguagem = 'Ruby'

case linguagem
    when 'Ruby'
	puts 'Bem vindo ao curso de Ruby'
	when 'Golang'
		puts 'Bem vindo ao curso de Golang'
	when 'JavaScrpti'
		puts 'Bem vindo ao curso de JavaScrtip'
	when Pyton
		puts 'Desculpe mas não esse curso não está disponivel'
	else
		puts 'Não temos essa linguagem'


end