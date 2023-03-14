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

Abstração em Rails é o processo de ocultar os detalhes complexos e necessários de um sistema
ou banco de dados, e apresentar uma interface mais simples e fácil de usar. Isso permite que
os desenvolvedores trabalhem em um nível mais alto de abstração, concentrando-se nas
funcionalidades da aplicação, em vez de se preocuparem com a complexidade interna da
infraestrutura.

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

observação:
Perceba que os atributos foram feito em forma de hash, seja, chave e valor
chave é → name      valor é → vai ser colocado mais a frente

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
 Isso acima se refere ao código abaixo, que foi criado dentro de app/db/migrate:

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
"Aaaaa! Product é subclasse de ApplicationRecord, e esta em Model que trata de BD..então
Product tem alguma tabela relacionada ao BD"
Por padrão o Rails vai saber que a tabela se chama Product pelo fato desta ser subclasse de
ApplicationRecord
Por isso que o Rails quando vai criar a tabela com o código que esta em
db/migrate/20230310155351_create_products.rb, trata a palavra Product como Products

Este é o padrão do Rails: o nome da tabela que sera criada é o nome do modelo, ou seja, da
classe no plural
E o modelo foi descrito no comando generate: bin/rails generate model product

Isso é por convenção do Ruby & Rails, eles tratam o nome de tabelas com pluralidade
Dessa forma e por convenção não é necessário especificar o nome da tabela em nenhum lugar,
pois o Rails sabe que o nome da tabela é Product

                               Importância de se criar nomes em Inglês
Por isso é importante tratar os nomes nos códigos em ingles
Se eu tivesse criado o nome da tabela como Produto no português o rails não ia saber que isso
é uma tabela, pleo fato estar configurado assim.
Por padrão é em inglês que o Rails vai saber o que é uma tabela e assim vai criar de forma certa
a tabela e os códigos que tratam delas.

Resumo:
Então temos uma tabela que se chama Product, sendo assim temos uma classe que se chama Product
que é subclasse de ApplicationRecord, por isso que o Rails sabe que uma tabela
E quando sabe que é uma tabela trata o nome da tabela com pluralidade

                                  Rodando a migração para se criar uma tabela
Até aqui o que foi gerado é a migração e não temos tabela
Para criar a tabela precisamos rodar a migrate
exemplo:
Dentro do projeto executa -> bin/rails db:migrate

o resultado é:

== 20230310221141 CreateProducts: migrating ===================================
-- create_table(:products)
   -> 0.0026s
== 20230310221141 CreateProducts: migrated (0.0027s) ==========================

Na 1º linha ela esta falando que criou a tabela CreateProduct
na 2º linha mostra o comando que foi executado
na 3º linha o tempo que levou para criar
na 4 linha a tabela de produtos foi migrada

                                          Rollback

E se por um engano gerei a tabela errada?
Para tal situação usa-se o comando rollback
Exemplo:
bin/rails db:rollback

o resultado foi:

== 20230310221141 CreateProducts: reverting ===================================
-- drop_table(:products)
   -> 0.0040s
== 20230310221141 CreateProducts: reverted (0.0138s) ==========================

Na 1º linha ela esta falando que reverteu a criação da tabela, ou seja, desfez
na 2º linha mostra o comando que foi executado o drop table que apaga a tabela
na 3º linha o tempo que levou para criar
na 4 linha a tabela de produtos foi apagada

                   Como o Rails sabe que deve apagar a tabela no caso de rollback?
O comando de rollback executa a última migração que foi executada, mas em ordem
reversa.
No método create_table existe o inverso, ou seja, para todo crate_table o Rails sabe
que pode executar um drop_table.

Por isso que o método onde está o create_table se chama change, porque o rails sabe
que pode ter uma change -> mudança
Isso significa que o Rails olha para a tabela de migrações, que mantém um registro
de todas as migrações que foram executadas em ordem cronológica inversa. O Rails
então executa a última migração na lista e reverte as alterações feitas por essa
migração no banco de dados.

Se a última migração criou uma tabela, então a reversão dessa migração irá excluir
a tabela correspondente no banco de dados. O Rails faz isso chamando o método down
da migração correspondente. No método down, é possível definir a lógica necessária
para reverter as alterações feitas pela migração, como a exclusão da tabela.

Por exemplo, se a última migração que foi executada criou uma tabela chamada products,
o método down da migração pode incluir o seguinte código para excluir a tabela:

def down
  drop_table :products
end

Isso fará com que o Rails exclua a tabela products quando a migração for revertida pelo
comando bin/rails db:rollback.

                        O que Rials faz se rodar o migrate 2 vezes?

Se o comando para criar tabelas for feito duas vezes para mesma tabela, o rails não fara
nada porque ele sabe exatamente qual migração foi feita pela ultima vez
Esse processo de migração é muito útil quando se trabalha em equipe. Como o Rails sabe
exatamente qual foi a ultima migração, se houver novas migrações no projeto vindas de fora
feitas por outros devs, o Rails saberá quai migração falta e só roda o que falta

Por isso é muito importante commitar essas migração, assim todos os devs vão ter as tabelas
necessárias para o projeto, que fica nas pasta migrate em db/migrate

                            Trabalhando com a tabela pelo terminal
Pelo terminal é possível fazer consultas, inserir informações, deletar, atualizar etc.
sem escrever query mas usando métodos do Rails

O rails tem um terminal próprio e para executar comandos para o BD
Entrando no projeto e escrevendo bin/rails console, temos aberto o seu terminal
veja o resultado quando o comando é executado:

Loading development environment (Rails 7.0.4.2) -> carregando ambiente de desenvolvimento
irb(main):001:0>                                -> ambiente aberto

Escrevendo o nome da tabela Product
temos:
irb(main):001:0> Product
=> Product (call 'Product.connection' to establish a connection) -> chamar 'Product.connection' para estabelecer uma conexão
irb(main):002:0>

O que recebemos é que o Rails conhece a tabela e pede para chamar um método de conexão para
para estabelecer uma conexão. COm isso então sabemos que temos uma conexão com BD

                                          Executando métodos

   Método count
executando Product.count
temos:
irb(main):002:0> Product.count
  Product Count (0.1ms)  SELECT COUNT(*) FROM "products"
=> 0
irb(main):003:0>

Perceba como o Rails cria a query select count, para trazer a contagem de quantos registros
tem na tabela product
o resultado foi => 0 registros

  Método create()
Com o método crate podemos atualizar nossa tabela
exemplo do script:
Crio um variavel product que recebe o script:

product = Product.create(name:'Perfume', price:100, active:true)

Percebe que o script/código é feito com o hahs, ou seja, chave valor
chave -> name     valor -> Perfume etc.
Ao clicar em enter temos:

irb(main):007:0> product = Product.create(name:'Perfume', price:100, active:true)
  TRANSACTION (0.2ms)  begin transaction
  Product Create (1.0ms)  INSERT INTO "products" ("name", "price", "active", "created_at",
  "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Perfume"], ["price", 100.0], ["active", 1],
  ["created_at", "2023-03-13 21:31:41.106589"], ["updated_at", "2023-03-13 21:31:41.106589"]]
  TRANSACTION (11.8ms)  commit transaction
=>
#<Product:0x0000562fd3b6e8c0
...
irb(main):008:0>

Após executar o comando temos:

O rails iniciou uma transação
Criou uma query insert into, que inseri dentro dos atributos name, price, active, created_at e
updated_at
Os valores:
em name -> Perfume que é o nome do produto
em price -> 100 que é o preço do produto
em active -> 1 que representa true, 0 representa false
em created_at -> que representa a data e hora da criação
updated_at -> que representa a data e hora da atualização

Para finalizar o Rails commita a transação ->   TRANSACTION (11.8ms)  commit transaction
e exibi o id do product -> #<Product:0x0000562fd3b6e8c0

Não criei nenhum script de BD, o ActiveRecord que é o Framework ORM do Rails, que mapeia
objetos relacionais, faz esse mapeamento, de forma abstrata
ActiveRecord mapeia os objetos da aplicação para as tabelas do banco de dados, permitindo
que os desenvolvedores trabalhem com objetos em vez de escrever consultas SQL manualmente.

Quando pedimos para ver a tabela Product, olhe o que temos de diferente nela:

irb(main):009:0> Product
=> Product(id: integer, name: string, price: decimal, active: boolean, created_at: datetime, updated_at: datetime)

Percebe que temos no inicio um id que o Rails criou com o método create

Quando pedimos para ver a variavel product temos o objeto Product nela veja:
irb(main):010:0> product
=>
#<Product:0x0000562fd3b6e8c0
 id: 1,
 name: "Perfume",
 price: 0.1e3,
 active: true,
 created_at: Mon, 13 Mar 2023 21:31:41.106589000 UTC +00:00,
 updated_at: Mon, 13 Mar 2023 21:31:41.106589000 UTC +00:00>
irb(main):011:0>

O id é 1
o hash name: carrega Perfume
active tem o valor true
price tem essa numeração de 100 mostrado em notação cientifica, que o Rails converteu pelo
fato do campo ser float e entrou um integer, assim ele convert para float e mostra dessa
forma
e os dois últimos são relacionados a data e hora que sofreu a alteração

Se examinarmo a classe de product temos:
irb(main):013:0> product.class
=> Product(id: integer, name: string, price: decimal, active: boolean, created_at: datetime, updated_at: datetime)

Ele mostra exatamente que product é o abjecto Product que ja vimos no nosso código abaixo.
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

                     Acessando meus atributos com comandos como se fossem no BD
Com isso vimos que a variavel product temos nosso objeto, e dessa forma podemos acessar
os atributos
se escrevermos product.id como resposta temos:
irb(main):015:0> product.id
=> 1
Lembrando que falamos mais atrás que não precisamos criar id que o Rails faz isso para nós

O price podemos acessar também

irb(main):017:0> product.price
=> 0.1e3
irb(main):018:0>

Ele mostra com notação científica mas podemos usar o float para ver o que realmente é
irb(main):018:0> product.price.to_f
=> 100.0
irb(main):019:0>

Percebe que temos o 100.0 como float que ele é


                                   update em Rails
Veja que podemos atualizar por exemplo o valor do product
Em uma query ficaria assim:
update product set price = 200.00 where product.id = 1

Como o Rails e pelo conceito de abstração só precisamos dizer ao Rails o que queremos atualizar
dessa forma abaixo:
product.update(price: 200.00)

Veja o resultado:

  Product Update (2.0ms)  UPDATE "products" SET "price" = ?, "updated_at" = ? WHERE "products"."id" = ?  [["price", 200.0], ["updated_at", "2023-03-14 13:16:00.587942"], ["id", 1]]     
  TRANSACTION (9.8ms)  commit transaction
=> true
irb(main):023:0> product.price
=> 0.2e3
irb(main):024:0> product.price.to_f
=> 200.0
irb(main):025:0>

Veja que o Rails trás o product.update que atualiza tudo para mim


                                SELECT em Rails
Para contar todos os meus product
em BD seria -> SELECT count*from products

em Rails é -> product.count

irb(main):029:0> Product.count
  Product Count (0.9ms)  SELECT COUNT(*) FROM "products"
=> 1
irb(main):030:0>

O resultado é 1, tenho somente 1 produto no meu BD


                                       INSERT em Rails
Então vou criar outro produto
em BD seria INSERT into product(name, price, active,) values(Sabonete, 20.00, true)

Aqui acima estou dizendo para:
 Insira dentro do objeto product na coluna name o valor sabonete, price é 20.00 e
active será true

em Rails é:
product = Product.create

O resultado foi:

irb(main):007:0> product = Product.create(name:'Perfume', price:100, active:true)
  TRANSACTION (0.2ms)  begin transaction
  Product Create (1.0ms)  INSERT INTO "products" ("name", "price", "active", "created_at",
  "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Perfume"], ["price", 100.0], ["active", 1],
  ["created_at", "2023-03-13 21:31:41.106589"], ["updated_at", "2023-03-13 21:31:41.106589"]]
  TRANSACTION (11.8ms)  commit transaction
=>

Quando peço para contar temos:
irb(main):033:0> Product.count
  Product Count (0.2ms)  SELECT COUNT(*) FROM "products"
=> 2

Inserindo mais um produto
irb(main):034:0> product = Product.create(name:"Shampoo", price:50.00, active:true)
  TRANSACTION (0.1ms)  begin transaction
  Product Create (0.3ms)  INSERT INTO "products" ("name", "price", "active", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Shampoo"], ["price", 50.0], ["active", 1], ["created_at", "2023-03-14 14:03:26.254993"], ["updated_at", "2023-03-14 14:03:26.254993"]]                             
  TRANSACTION (8.5ms)  commit transaction
=>
#<Product:0x0000562fd4cc1190

Quando peço para contar temos:
irb(main):035:0> Product.count
  Product Count (0.6ms)  SELECT COUNT(*) FROM "products"
=> 3
irb(main):036:0>

Agora temos 3 produtos na minha tabela



=end
