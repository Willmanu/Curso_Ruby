=begin

Em Ruby, um método é um bloco de código que pode ser chamado várias vezes em diferentes
partes do programa.
É basicamente uma função que executa uma tarefa específica.
Os métodos em Ruby são definidos usando a palavra-chave "def", seguida pelo nome do método
e seus parâmetros, se houver, terminam com "end" e no meio entre def e end temos o bloco
de código.

def nome_metodo (parâmetros)
  bloco de código
end

No método parêntese e return são opcionais, tanto faz usar return ou não porque o Ruby,
sempre trás o resultado da execução da ultima linha.
Exemplo:

=end

def soma valor1, valor2
	puts "Estou somando #{valor1} e #{valor2}"

	return valor1 + valor2
	
end

puts "A soma dos valores são: #{soma(10, 5)}"

=begin

  O que será impresso é:

  Estou somando 10 e 5
  A soma dos valores são: 15

  O método soma é chamado fora do def, com os valores sendo passados em parâmetro
  para as variáveis chamadas: valor1 e valor2.
  Este executa a operação e retorna com resultado.
  Observação: mesmo sem o return os valores retornam sendo possível guarda-los
  em uma variável
  

           Ordem e posição da variável da função def

  No método/função temos as posições dos parâmetros.
  No exemplo acima a variável valor 1 é a posição 1 e valor2 é a posição 2.
  10 é a posição 1 e 5 é a posição 2.
   
  Pode parecer óbvio isso das posições, porém em uma função que recebe muitos parâmetro,
  precisamos estar atento pois, não é difícil errar os valores a serem passados ocasionando
  erros em contas e o valor desejado não sera alcançado.

               Argumentos/parâmetros nomeados
  
  Parâmetros nomeados é um recurso de linguagem de programação que permite que uma função
  receba parâmetros/argumentos em uma ordem específica, sem que o chamador precise se
  preocupar com a ordem exata dos argumentos.
  Com os parâmetros nomeados, é possível chamar uma função passando os argumentos em qualquer
  ordem, desde que sejam especificados pelo nome correspondente.

  Esse método em algumas linguagem é conhecido como: parâmetro/argumentos como nome
  ou etiqueta ou simbolo.
  Exemplo de como funciona em Ruby:

=end

def calcular_imposto(salario: 0, taxa: 0.10, dependente: 0)

  puts salario

  imposto = salario * taxa

  desconto_dependente = dependente * 1000

  return imposto - desconto_dependente

end

resultado = calcular_imposto(taxa: 0.12, dependente: 2, salario: 5000)

puts resultado

  
  
  
  
  
  
