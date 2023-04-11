=begin
                                                    loop do
 A palavra "loop" significa laço e "do" é fazer, ou seja,fazer o laço
 Perceba que na frase não temos um fim para o laço
 Embora parece dizer isso, um laço sem fim, essa estrutura de repetição é útil quando não
 se sabe quando vezes um loop precisa ser executado
 Para para-lo usamos o break, ou seja, quando atingir o que se deseja com o loop o paramos
 a execução usando o break
 exemplo:
 
=end

i = 1

loop do
  puts i
  i += 1
  break if i > 5
end

=begin
 Nesta estrutura declarei uma variavel i que recebe 1
 Após isso tenho a estrutura do loop:
	loop do
      código
	end
 Dentro do laço tem a linha que imprimi o valor que esta em i
 Logo após tenho a mesma variável i sendo incrementada a mais 1
 Interrompo o laço com o break se i for maior que 5, ou seja, quando o valor em i chegar
 a 5 vai para o laço.

 O resultado é:
   1
   2
   3
   4
   5

=end
