=begin
                                         require

Em Ruby, require é uma palavra-chave usada para carregar ou importar, bibliotecas ou módulos
externos que contém configurações de classes, métodos e outras funcionalidades reutilizáveis
no nosso código.
Quando se usa o require, o interpretador Ruby procura o arquivo especificado na variável
$LOAD_PATHe carrega o conteúdo desse arquivo para dentro do seu programa.

A variável $LOAD_PATHé uma variável global que contém uma lista de diretórios em que o Ruby
procura por arquivos quando você usa require. Cada diretório na lista é separado por dois
pontos no sistema Unix ou por ponto e virgula no sistema Windows.

Por padrão, $LOAD_PATHinclui o diretório atual e os diretórios padrão do Ruby, como
/usr/local/lib/ruby/3.0.0, onde as bibliotecas padrão do Ruby são mantidas. No entanto,
você pode adicionar seus próprios diretórios à lista $LOAD_PATHse tiver bibliotecas ou
módulos personalizados que deseja usar em seu programa.

Ao usar require, você pode especificar um caminho relativo ou absoluto para o arquivo que
deseja carregar. O interpretador Ruby procurará o arquivo no $LOAD_PATHe carregará seu
conteúdo para dentro do seu programa. Se o arquivo não puder ser encontrado em nenhum
diretório no $LOAD_PATH, o Ruby gerará um erro.


Nesta caso o endereço que vai ser passado para que o require será o do meu diretorio que contém 
=end

require './classcarro/carro'

objetocarro = Carro.new('Chevrolet', '2002', 'William P. Silva')
objetocarro.carro
