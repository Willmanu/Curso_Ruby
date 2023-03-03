=begin
  O termo substring denota uam posição inferior.
  Sabemos que string é uma lista de caracteres.
  Substring são cadeias de caracteres inferiores da string.
  É uma subcadeia.
  Exemplo:
=end

name_ = 'Cadu'
p name_[0, 2]

=begin
  O que acontece acima é: dentro do colchete eu digo que quero acessar da posição 0 e até a
  posição 2.
  O que vai ser impresso é 'Ca' sendo C a posição 0 e 'a' a posição 2.
  Se eu por dentro do colchete[0,3] o que vai ser impresso é 'Cad'
=end

p name_[0, 3]
# o que foi impresso foi "Cad"