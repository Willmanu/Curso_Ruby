=begin
chop significa cortar.
Com chop, você sempre removerá o último caractere. ou seja, cortara este ultimo caractere.
=end

p 'Por favor! digite seu nome'
name = gets.chomp
puts "Olá #{name.chop}, prazer em conhecê-lo!"

=begin
  O que será impresso aqui é Willia, sem o m no final do nome.
  O chop removeu o ultimo caractere
=end