=begin

                                       Banco de dados com Rails
Anteriormente vimos com criar um projeto com rails bem simples e fácil
Agora vamos criar tabelas e brincar com o terminal do rails

Não especifiquei com qual BD iria trabalhar com o Rails como servidor. Isso fez que o
Rails por padrão especificasse dentro de si o BD SQLite3

A forma de indicar o BD que seria usado no Rails quando criar o projeto, como servidor é:
rails new nome_projeto -d nome_BD(mysql, postgresql etc.)
 ou seja, o script para criar o projeto mais a flag -d e o BD
 Como não especifiquei o banco quando criei o projeto, ficou o padrão sqlite3

para conferir o BD que esta no projeto use:
cat config/database.yml

cat é o comando para mostrar o conteúdo de um arquivo

No casso o conteúdo que seja mostrado é do arquivo database.yml que esta na pasta config
dentro do projeto. Neste arquivo esta especificado qual o BD que esta configurado.

O sqlite3 é um BD baseado em um arquivo, ou seja, ele lê um arquivo ao invés de se comunicar
com um protocolo cliente e servidor

Este arquivo está em:
database: db/test.sqlite3
Ou seja dentro da pasta db e o nome do arquivo é test.sqlite3

                                          Migration

Por padrão as tabelas no Rails são criadas pelo próprio Rails.
Fazendo assim o próprio Rails gera um arquivo de migração.
Isso significa que o BD, a partir do Rails, fica versionado com todas as estruturas aqui no
meu projeto conforme ele vai evoluindo.
Imagina criar a tabela pessoas, usuário, produtos etc. apaga uma tabela etc. isso sendo
acompanhado em tempo real, histórico, evolução etc. Todas essas informações ficará no
que se chama de migração.
Assim quando colocarmos esse projeto em algum repositório, como exemplo o GitHub, outra
pessoa que clonar esse repositório vai conseguir executar as alterações que foram feitas
por mim neste BD. E isto é muito util trabalhando em equipe, ao invés de ter scripts
compartilhados que criam o BD.

                                      Criando tabela product

Em Rails para criar uma tabela podemos fazer duas coisas:
-criar uma migração
-gerar um modelo

Rails é MVC - Model, View e Controller.
Sendo assim a camada que fala com o banco de dados geralmente é o Model
Então criando no código, como por exemplo a tabela product, se tivermos uma classe chamada
product, automaticamente o rials vai se comunicar através da classe com a tabela product

Por padrão e convenção, no Rails não é preciso fazer configurações para que a classe
se comunique com a tabela x ou esse campo x se comunica com essa coluna y etc.

Por padrão quando informamos ao Rails que o modelo é do ActiveRecord, que é o
Framework ORM (Object-Relational Mapping) do Rails, ele procura a tabela que corresponde a
esse modelo

   Framework ORM
"Frame" significa "estrutura" ou "esqueleto" e "work" significa "trabalho" ou "trabalho em
equipe"
No contexto do desenvolvimento de software, o termo "framework" se refere a uma estrutura
de software que oferece aos desenvolvedores uma estrutura básica para construir aplicativos.
A estrutura de um framework é semelhante a um esqueleto, que os desenvolvedores podem
preencher com código personalizado para criar um aplicativo completo.
Assim, a palavra "frame" descreve a estrutura básica que o framework fornece, enquanto a
palavra "work" se refere ao trabalho em equipe necessário para preencher essa estrutura com
código personalizado para criar um aplicativo funcional.
ORM -> Object-Relational Mapping -> Mapeamento objeto-relacional

Então Framework ORM é: Uma estrutura de trabalho que serve para Mapear objetos relacionais.
É uma camada de abstração de BD que permite aos devs interagir com um BD relacional usando
objetos Ruby em vez de SQL diretamente

                        Usando o Generate para criar a tabela
Dentro do projeto novo precisamos informar que em bin/rails vai acontecer um generate model
Exemplo:
bin/rails generate model product
Isso significa:
dentro da pasta bin em rails gera um modelo chamado product

Agora vem os atributos desta tabela.
Por padrão nẽo é necessário criar id, o Rails cria automaticamente.
Exemplo:
bin/rails generate model product nome:string price:decimal active:boolean

Assim que eu der enter o Rails cria uma migração, ou seja, criou um código que vai alterar o BD
Exemplo da impressão ao dar enter:

 invoke  active_record                     --> invoca o ActiveRecord
 create    db/migrate/20230310155351_create_products.rb ------>aqui esta o migrate com o código ruby que relaciona o BD
 create    app/models/product.rb                               criou em app/models o arquivo product.rb
 invoke    test_unit
 create      test/models/product_test.rb                       criou em test/model o arquivo product_test.rb
 create      test/fixtures/products.yml                        criou em test/fixtures o arquivo product.yml

 O que temos aqui acima uma migração -> código que vai alterar o BD

 Perceba que na primeira linha, á uma invocação de ActiveRecord
 Exemplo:  invoke  active_record

 ActiveRecord e um FrameWork que faz a relação entre a classe e a tabela do BD, com códigos para
 manipulação destes registos que estão em atividade

 Olhe a segunda linha o que foi criado ao dar enter:
 create    db/migrate/20230310155351_create_products.rb
 Isso acima se refere ao código abaixo, que fpi criado dentro de app/db/migrate:

# esta classe é sobre a tabela produto
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nome
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end

O que temos nesse código é:
Uma classe chamada Criar Produtos -> CreateProducts
Percebe que escrevi no singular e o Rails crio o nome em plural.
Essa é a forma que Rails faz para identificar uma tabela, tratando seu nome no plural

ActiveRecord significa Registro Ativo, ou seja, a expressão quer dizer que os registros
são os dados que entram no BD, para serem manipulados e estão em atividades

Então Dentro de ActiveRecord tem uma classe chamada -> Migration[7.0]
CreateProducts é subclasse de Migration

Dentro de migration tem um método que se chama change com um bloco começa em "do" e finaliza em
"end"
Quando o Migration for executado acontece o seguinte:

Create_table :products -> vai criar a tabela chamada produtos(pluralidade para saber que é uma tabela)
Entre o do e o end temos um bloco de código
Entre pipe | | temos o t que é uma variavel, t de tabela
Então t.string :name é para criar uma coluna na tabela, do tipo string, que se chama nome
outra é decimal que se chama price e uma boolean que se chama active

t.timestamps são:
Por padrão o Rails cria duas colunas chamadas criado em e atualizado em
Todo vez que inserir dados na tabela, automaticamente sera preenchido essas colunas

Outra coisa que pode ser feita na colunas são dar comportamentos a elas como por exemplo:
nome não pode ser em branco.
para isso faz -> :name, nill: false -> ou seja não pode ser nula tem que ter conteúdo nesta coluna
Isso vai ser escrito no BD, essa coluna tem uma regra que não pode estar vazio
 Então fica assim a classe

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nome, nill: false
      t.decimal :price
      t.boolean :active

      t.timestamps
    end
  end
end


Antes de testar o código preciso pensar em umas coisas:
Quando usei o comando generate para criar a tabela, o rails criou outros arquivos como
demonstrados
Dentre esses que vimos temos o
create    app/models/product.rb
esse código abaixo:
class Product < ApplicationRecord
end

Perceba que a classe Product é subclasse de ApplicationRecord
Application Record significa aplicação dos registros, ou seja, é uma classe base para todos os
modelos do ActiveRecord, que cuida de aplicar os registros/dados
Ela foi criada também assim que se executou o generate
Exemplo:

create      test/models/product_test.rb

Esta dentro de app no models visto que models trata de BD
Seu código é:

  class ApplicationRecord < ActiveRecord::Base
    primary_abstract_class
  end

Perceba que ApplicationRecord é subclasse de Base, uma classe que esta no ActiveRecord
Sabemos que ActiveRecord é um Framework que trata do comportamento do BD
Em resumo, a classe ApplicationRecord é a classe base para todos os models do ActiveRecord
no Ruby on Rails. Ela é uma classe abstrata que herda da classe ActiveRecord::Base e é usada
para definir comportamentos e métodos padrão que serão compartilhados entre todos os models
do aplicativo

Então essa classe ApplicationRecord que esta em app model, e model trata de BD, o rails sabe que
é um modelo de BD

                       Como o Rails sabe o nome da tabela sem o dev especificar?

Quando temos Product sendo subclasse de < ApplicationRecord, o Rails está dizendo:
"Aaaaa! Product é subclasse de ApplicationRecord, e esta esta em Model que trata de BD..então
Product tem alguma tabela relacionada ao BD"
Por padrão o Rails vai saber que a tabela se chama Product pelo fato desta ser subclasse de
ApplicationRecord
Por isso que o Rails quando vai criar a tabela em db/migrate/20230310155351_create_products.rb
trata a palavra Product como Products
Este é o padrão do Rails: o nome da tabela que sera criada é o nome do modelo no plural
E o modelo foi descrito no comando generate: bin/rails generate model product

Isso é por convenção do Ruby & Rails, eles tratam o nome de tabelas com pluralidade
Dessa forma e por convenção não é necessário especificar o nome da tabela em nenhum lugar, pois o
Rails ja sabe que o nome da tabela é Product

                               Importância de se criar nomes em Inglês
Por isso é importante tratar os nomes nos códigos em ingles
Se eu tivesse criado o nome da tabela como Produto no português o rails não ia saber que isso é uma
tabela, pleo fato estar configurado assim.
Por padrão é em ingles que o Rails vai saber o que é uma tabela e assim vai criar de forma certa
a tabela e os códigos que tratam delas.

Resumo:
Então temos uma tabela que se chama Product, sendo assim temos uma classe que se chama Product
que é subclasse de ApplicationRecord, por isso que o Rails sabe que uma tabela
E quando sabe que é uma tabela trata o nome da tabela com pluralidade

                                  Rodando a migração para se criar uma tabela
Até aqui o que foi gerado é a migração e não temos tabela
Para criar a tabela precisamos rodar a migrate
exemplo:
Dentro do projeto executa -> bin/rails de:migrate

o resultado é:

== 20230310221141 CreateProducts: migrating ===================================
-- create_table(:products)
   -> 0.0026s
== 20230310221141 CreateProducts: migrated (0.0027s) ==========================


=end
