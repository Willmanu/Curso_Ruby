def palindromo (palavra)
  palavra = palavra.downcase # transforma toadas as letras em minuscula
  palavra_reversa = ''
  tamanho = palavra.length
  until tamanho.zero?
    letras = palavra [tamanho - 1]
    palavra_reversa << letras
    tamanho -= 1
  end
  if palavra_reversa == palavra
    return true
  else
    return false
  end
end

puts 'Escreva uma palavra e verificaremos se é palíndromo ou não'

palavra = gets.chomp.strip

if palavra.empty?
  while palavra.empty?
    puts 'Não é uma palavra, por favor digite uma palavra'
    palavra = $stdin.gets.chomp.strip
  end
else
  e_palindromo = palindromo(palavra)
  if e_palindromo
    puts "Sua palavra é #{palavra} portando é palíndromo"
  else
    puts "Sua palavra é #{palavra} portanto não é palíndromo"
  end
end