=begin
  Com o método .strip consigo remover todos os espaços entre uma palavra.
  Bem útil quando obtemos com o gets informações do usurário, e este acaba digitando espaços.
  Remover os espaços ajuda a manter a variável somente com os caracteres necessários.
  Isso diminui uso de recurso ao rodar o programa e armazenamento no BD.
  Exemplo de uso:
=end

mensagem = '               Minha mensagem           '
puts mensagem  # aqui temos 40 caracteres
puts mensagem.length
mensagemspritada = mensagem.strip
puts mensagemspritada
puts mensagemspritada.length # com a remoção passou para 14 o tamanho.