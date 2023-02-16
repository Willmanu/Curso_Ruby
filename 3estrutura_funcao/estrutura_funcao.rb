=begin
  Para definir uma função:
  1º escreva é def para abrir
  2º escreva o nome da função
  3º abra e feche parentese, e dentro deste vão os parâmetros
  4º abaixo disso que foi feito acima, ou seja, na proxima linha vai o bloco de código
  5º feche com end
  6º chame a função pelo seu nome, e passe os parâmetros para realizar a função.
  

  No exemplo abaixo é uma função que faz a soma de valore. Perceba que dentro do parentese
tenho as variáveis que vão receber os números que serão somados.
  
Fora da função, ou seja, após o end chamei a função pelo seu nome
e passei os valores que quero a soma
Os valores entram nas variáveis que tem o nome de valor1 e valor2, são somados e o resultado
é impresso na tela conforma o código.
=end

def somar(valor1, valor2)
  puts valor1 + valor2
end
somar(1, 2)