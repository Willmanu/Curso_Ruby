=begin

                                             MVC
Model
View
Controller
Em um Desenvolvimento web tenho:
- interação do usuário e a representação da informação

O mvc e um padrão de arquitetura de software, que separa a:
representação da informação da interação do usuário

                                   Problema que o MVC resolve

Ela foi criada para resolver um problema
E qual seria?

Quando se cria um aplicação web, esta é colocada em um servidor.
Uma pessoa vai acessar o browser e vai acessar essa aplicação que esta em um servidor
Essa aplicação pode ser feita em um único arquivo
Porém quando se começa a criar novas funcionalidades para esse arquivo a tendencia é
ele ir aumentando, ou seja, escalando
Vai inchando inchando até se tornar uma bola de neve
Este fato quer dizer que se criar uma aplicação, e ela for crescendo de forma desorganizada,
e muito fácil ter um problema
Em uma aplicação que atende muitas pessoas, é normal criar novas funcionalidades, o que
essa aplicação crescer ou como diz na programação -> escala
E com isso gera muita manutenção no futuro

                                   Forma que o MVC resolve os problema

Ai que entra o MVC para resolver esse problema
De que forma?

Separando as responsabilidades

Cada parte do MVC tem suas responsabilidades para atender o que usuário deseja

	                                Responsabilidades
View mostra o conteúdo para o usuário, só se preocupa em pegar dados e mostra para usuário,
ou seja, envia uma resposta

Controller sua função é receber a requisição do usuário, e baseado nisto, pode ou não buscar
dados em um model e mostrar na View

Model armazena os dados do usuário ou pega de outro lugar para armazenar

Resumo: O MVC tem a responsabilidade de separar cada função, e assim delegar atividades a cada
um dos elementos, para que quando minha aplicação cresça, não vire um bola de neve e me
faça ter trabalho demasiado para corrigir os problemas.
Assim a escalabilidade vai estar garantida

A interação sempre começa do usuário
Está passa pelo controller, e assim é distribuídas para outras parte se necessário:
View e Controller

                                            CRUD
Create
Read
Update
Delete

CRUD (Create, Read, Update, Delete) é um acrônimo(palavra formada pelas iniciais)
São ações em informações que estão armazenada
É um mnemônico( relativo à memória; é uma técnica com o objetivo de auxiliar a memória) para
as quatro operações básicas de armazenamento persistente.

                                         Ciando CRUD
Aqui vou criar um CRUD que valida nome e email do usuário, ou seja, um cadastro

1º cria um projeto com:
rails new nome_projeto(mvc_teste)

Observação:
após o projeto ser criado é sempre bom executar o comando: bundle install
assim ele busca possíveis gem que esteja falta no projeto

2º dentro do projeto usa-se o comando:
rails g scaffold User name:string email:string

o g é de generate


                                           scaffold

A palavra vem emprestada da construção civil e quer dizer -> pré-moldado ou andaime - faz
referencia a uma esqueleto da aplicação, gerando estruturas que se repetem muitas vezes no
sistema de uma maneira mais rápida e simples

"scaffold" é um gerador de código que pode ser usado para criar rapidamente uma estrutura
básica para uma aplicação web.
Ele gera automaticamente um conjunto de arquivos, incluindo um modelo, controlador, rotas,
views e arquivos de migração para o banco de dados

O objetivo do scaffold é acelerar o desenvolvimento de uma aplicação web, permitindo que os
desenvolvedores criem rapidamente uma estrutura básica para o aplicativo, sem precisar escrever
manualmente todo o código para cada parte do aplicativo

No entanto, é importante notar que o scaffold não é uma solução completa para o desenvolvimento
de aplicativos web.
Embora possa ser útil para criar rapidamente uma estrutura básica, os desenvolvedores ainda
precisam escrever código adicional para implementar recursos avançados ou personalizar a
aplicação. Além disso, o código gerado pelo scaffold pode precisar ser ajustado para atender às
necessidades específicas do aplicativo.


User é o nome do scaffold
name e email são os campos do CRUD, sempre com seus tipos a frente.
No caso de tipos string, na versão do Rails de numero 5.0 náo é mais necessário informar

	então fica assim o script:
	rails g scaffold User name email

Então com base nessa explicação o que o script quer dizer é:
que o rails vai gerar um esqueleto/estrutura, chamada User porque é para um usuário que também é
o nome do model, com dois campos/atributos onde o usuário vai preencher, com seu nome e email.

Isso que significa que o CRUD será um cadastro para usuário, onde será cadastrado nome e email.

observação: o nome do model sempre será no singular e com a 1º letra em maiúscula


	Analisando o que esta nas pastas do projeto mvc_test antes de rodar o script scaffold

Dentro das pasta Controller, Model e View temos os arquivos padrão que o Rails cria quando
o generate cria o projeto que são:

Controller temos -> application_controller.rb
Models temos -> application_records.rb
Views temos -> layouts-> application.html.erb, mailer.html.erb e mailer.text.erb

                          O que o scaffold cria quando da enter ao script?
Após executar o script/comando veja o que o Rails criou, observando o log de saída, a frente
da palavra create
 invoke  active_record
      create    db/migrate/20230319203204_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      invoke  resource_route
       route    resources :users
      invoke  scaffold_controller
      create    app/controllers/users_controller.rb
      invoke    erb
      create      app/views/users
      create      app/views/users/index.html.erb
      create      app/views/users/edit.html.erb
      create      app/views/users/show.html.erb
      create      app/views/users/new.html.erb
      create      app/views/users/_form.html.erb
      create      app/views/users/_user.html.erb
      invoke    resource_route
      invoke    test_unit
      create      test/controllers/users_controller_test.rb
      create      test/system/users_test.rb
      invoke    helper
      create      app/helpers/users_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/users/index.json.jbuilder
      create      app/views/users/show.json.jbuilder
      create      app/views/users/_user.json.jbuilder




Aqui  create    db/migrate/20230319203204_create_users.rb
temo uma migração

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

Aqui  create    app/models/user.rb
temos a classe User sendo subclasse de ApplicationRecord

class User < ApplicationRecord

classe base do framework ActiveRecord, end cuida da aplicação dos dados ao BD


                                      "teste_unit"
Framework de teste de unidade Ruby on Rails
Aqui
 invoke    test_unit
    create      test/models/user_test.rb
    create      test/fixtures/users.yml

O Rails invoca e cria arquivos de teste
teste_unit é um framework de teste de unidade padrão que vem com o Ruby on Rails
Usado para escrever teste automatizados com o intuito de verificar se o código funciona
corretamente
observação: este teste são importantes para garantir que parte individual do código,
funcionem corretamente antes de serem combinados em uma aplicação completa

Este teste garante a detecção de problemas em um estagio inicial de desenvolvimento,
facilitando sua correção e assim, reduzindo a necessidade de depuração economizando
tempo e esforço

                                        resource_rotas
Aqui
 invoke  resource_route
    route    resources :users

Invoca o resource_rotas → rotas de recurso
É um help methods -> métodos de ajuda
Este gera rotas para recursos API RESTful ->  recomendado para desenvolvimento
web, ou seja, cria uma rota para APIRestful
Resumindo é um método de ajuda que cria as rotas necessárias para um API, encapsulando
a logica necessária para criar as rotas de CRUD
Com esse método não é necessário criar rotas manualmente para cada um desses métodos HTTP
para cada modelo no meu aplicativo

   resource :user
O resource que vimos acima cria um código que é adicionado ao arquivo de rotas ->
config/routs.rb criando as rotas para o model User com as seguintes ações:

GET /users para listar todos os usuários
GET /users/new para exibir um formulário de criação de usuário
POST /users para criar um novo usuário
GET /users/:id para exibir um usuário específico
GET /users/:id/edit para exibir um formulário de edição de usuário
PATCH /users/:id para atualizar um usuário específico
DELETE /users/:id para excluir um usuário específico

resumo: Quando se adiciona o "resources :users" ao arquivo de rotas do aplicativo Rails,
ele cria automaticamente essas rotas para o modelo de usuário, permitindo a execução
dessas ações no aplicativo.

                                   scaffold_controller
Aqui
invoke  scaffold_controller
  create    app/controllers/users_controller.rb

É uma tarefa do Rails
Essa tarefa gera um controlador com todas as ações do CRUD, para meu modelo de
aplicação User
Foi criado com um arquivo chamado users_controller.rb em app/controllers/
possuindo métodos de ações para o CRUD para classe User com as seguintes ações:

index: lista todos os usuários
show: exibe um usuário específico
new: cria um novo usuário
create: salva um novo usuário no banco de dados
edit: exibe o formulário para editar um usuário
update: atualiza os dados de um usuário no banco de dados
destroy: exclui um usuário do banco de dados


                                        erb
Aqui temos
   invoke    erb
      create      app/views/users
      create      app/views/users/index.html.erb
      create      app/views/users/edit.html.erb
      create      app/views/users/show.html.erb
      create      app/views/users/new.html.erb
      create      app/views/users/_form.html.erb
      create      app/views/users/_user.html.erb

erb é -> Embedded Ruby significa -> Ruby embutido
É um formato de modelo de visualização usado em muitos aplicativos Ruby on Rails
Combina HTML, ou qualquer tipo de código de marcação com código Ruby

Este arquivo user, foi criado dentro da pasta view, que esta em app
São modelos de visualização (views) em formato .erb (Embedded Ruby) para a entidade User

O comando invoke erb é uma tarefa do gerador de scaffold do Rails, que gera automaticamente
arquivos de visualização para CRUD do User

Os arquivos criados são:

  index.html.erb: a view para exibir uma lista de todos os usuários
  edit.html.erb: a view para editar um usuário existente
  show.html.erb: a view para exibir os detalhes de um usuário específico
  new.html.erb: a view para criar um novo usuário
  _form.html.erb: um parcial que contém o formulário para criar ou editar um usuário
  _user.html.erb: um parcial que contém o HTML para exibir os detalhes de um usuário em
  uma tabela, por exemplo


                                            helper
helper -> ajuda
É um tipo de arquivos que contém métodos que vão ajudar as views, ajudando a exibir
informações dos usuários na pagina. Por exemplo:
posso criar método que formate a data de nascimento do usuário

Aqui
 invoke    helper
    create      app/helpers/users_helper.rb

dentro de app foi criada uma pasta helper que contem o arquivo user_helper.rb

                                      jbuilder

jbuilder -> significa json builder, ou seja, construtor json
Ele é uma gem(biblioteca) que constrói saídas json de forma mais fácil e legível, sem fazer
mistura de código Ruby com json

Aqui
 invoke    jbuilder
    create      app/views/users/index.json.jbuilder
    create      app/views/users/show.json.jbuilder
    create      app/views/users/_user.json.jbuilder

Temos:
Os comandos "create" estão criando os arquivos de visualização (views) para a ação "index"
e "show" do controlador (controller) "Users", que irão fornecer as saídas JSON para essas
ações. O arquivo "_user.json.jbuilder" é um arquivo de visualização parcial que é usado para
renderizar o JSON de cada usuário na lista de usuários retornada pela ação "index".

Em resumo, esses arquivos Jbuilder estão sendo criados para permitir que o Rails construa
respostas JSON a partir de dados retornados pelo controlador "Users" em seu aplicativo web

Resumo: com isso sabemos que o Rails criou o básico do mvc para essa aplicação

                                    Comandos db:create  db:migrate

Neste momento tenho o esqueleto de criação da tabela User, com os campos nome e email
e diversas outras coisas feitas graças ao Rails.

Vimos que temos o arquivo em db/migrate criado, ou seja, o código ruby abaixo

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

 db:migrate é: quando esse código acima for executado, o rails vai pegar esse código em
 Ruby, transformar em query na lingua do bd configurado aqui no projeto, e assim o bd
vai tomar a ações e criar a tabela no BD

db:create é: criar o BD

resumo: cia o banco e migra -> gera a tabela no bd

Os dois comando para execução fica assim:
dentro do projeto escreve

rails db:create

rails de:migrate

ou em uma linha só

rails db:create db:migrate

após o db:create temos
Created database 'db/development.sqlite3'
Created database 'db/test.sqlite3'

acima ele cria o banco de dados sqlite3, um arquivo chamado -> development.sqlite3
dentro da pasta db
e cria também test.sqlite3 o db de teste


após o db:migrate temos
== 20230319203204 CreateUsers: migrating ======================================
-- create_table(:users)
   -> 0.0021s
== 20230319203204 CreateUsers: migrated (0.0022s) =============================

aqui vemos a migração, ou seja, query de BD através de código Ruby que o Rails criou


                                    Rails server
É o comando que inicia o servidor para ver se esta funcionando a aplicação

no terminal é só escrever:

rails server ou abreviado rails s

e o retorno é:

=> Booting Puma
=> Rails 7.0.4.3 application starting in development
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.5 (ruby 3.0.2-p107) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 18805
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop

e assim que eu abrir o app no browser tenho:

Started GET "/" for ::1 at 2023-03-20 16:29:30 -0300
  ActiveRecord::SchemaMigration Pluck (0.6ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY
  "schema_migrations"."version" ASC
Processing by Rails::WelcomeController#index as HTML
  Rendering vendor/bundle/ruby/3.0.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb
  Rendered vendor/bundle/ruby/3.0.0/gems/railties-7.0.4.3/lib/rails/templates/rails/welcome/index.html.erb
  (Duration: 2.7ms | Allocations: 931)
Completed 200 OK in 57ms (Views: 32.6ms | ActiveRecord: 0.0ms | Allocations: 7992)
=end
