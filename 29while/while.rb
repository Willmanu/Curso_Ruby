=begin

  O laço de repetição while em Ruby é uma estrutura de controle que permite executar
  um bloco de código repetidamente enquanto uma determinada condição for verdadeira.

  A sintaxe básica do while é a seguinte:
  while condição do
   bloco de código a ser executado
  end

  while quer dizer enquanto.
  do é faz ou faça
  emd é o fim.
  
  Enquanto não atender a condição desejada faça a execução do bloco.
  E vai sendo executando ate concluir o que se deseja.

  O bloco de código é executado repetidamente enquanto a condição for verdadeira.
  A condição é testada no início de cada iteração do laço, e se ela for falsa,
  a execução do laço é interrompida e o controle passa para a próxima instrução após o end.

  Por exemplo, o seguinte código em Ruby usa um laço while para imprimir os números de 1 a 10:

=end

i = 1
while i <= 10 do
	puts i
	i += 1
end

=begin

  Neste exemplo, a condição i <= 10 é testada no início de cada iteração do laço.
  Enquanto a condição for verdadeira, o bloco de código dentro do while é executado,
  que neste caso imprime o valor de i e então incrementa i em 1.
  O laço continuará a ser executado até que i seja maior do que 10, momento em que
  a condição se tornará falsa e a execução do laço será interrompida.

	a impresão fica:
	1
    2
    3
    4
    5
    6
    7
    8
    9
    10

=end