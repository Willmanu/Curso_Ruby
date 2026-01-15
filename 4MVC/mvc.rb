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
Em uma aplicação que atende muitas pessoas, é normal criar novas funcionalidades, o que faz
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
um dos elementos, assim quando minha aplicação crescer, não vire um bola de neve e me
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

Isso significa que este CRUD, será um cadastro para usuário, onde será cadastrado nome e email.

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
O termo migração seve para descreve o BD de um estado para outro, ou seja,
antes dessa ação o BD não tem nada, após essa ação, o BD passa a ter um novo estado.
Por isso o termo migrate, migrou de nada para ter algo.
Agora tem tabela com dois campos
Conforme o desenvolvimento da aplicação, seu estado vai mudando, ou seja,
migrando porque vai adquirindo dados novos.

La na projeto dentro da pasta models no arquivo user.rb tem isso abaixo

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

temos a classe CreateUser herdando ApplicationRecord
Aqui acima entra o conceito de herança, ou seja, Classe CreateUser herda
funcionalidades de ActiveRecorde  

Active Record é uma das partes mais importantes do Ruby on Rails.
Ele é o ORM do Rails.
ORM (Object-Relational Mapping) = uma camada que faz a ponte entre objetos Ruby
e tabelas do banco de dados.

Em termos simples

O Active Record permite que você trate registros do banco como objetos Ruby,
sem precisar escrever SQL na maior parte do tempo.

👉 Tabela → vira uma classe
👉 Linha da tabela → vira um objeto
👉 Coluna → vira um atributo
Ou seja, cuida da aplicação dos dados ao BD


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

                                        resource_route
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

resumo: cria o banco e migra -> gera a tabela no bd

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

                          Analisando como os elementos do MVC conversam

Embora o nome dessa arquitetura seja MVC, pela forma que as coisas acontecem aqui na
arquitetura, o nome deveria ser CVM ou CMV

Isso porque quando o user faz uma requisição(requeste), ou seja, entra na barra de endereço
do browser(navegador) e faz uma busca, a  busca cai primeiramente em um controller
E este analisa este pedido primeiro para depois decidir para onde vai
Se apresenta uma view ou entra no model para pegar um dado/registro/informação

Observação: só vai cair no controller se tiver uma rota
A rota é o endereço -> https://…… do site etc, para o que se deseja ver

A exemplo foi o endereço dessa aplicação -> localhost:3000 que leva o user para a tela de
apresentação do app

Quando o endereço localhost:3000 cai no controller ele vai até o servidor e trás a view de
apresentação do app


	                    Especificando rota no browser do meu app mvc_test

Dentro do meu projeto mvc_test temos a pasta app e nela temos os elementos do mvc que são
Model, View e Controller
Dentro de controller temos o arquivo user_controller.rb
Este tem a responsabilidade que receber a requisição do usuário e apresentar o que este
usuário deseja

                Como saber a rota para chegar em user_controle.rb no browser?

Neste caso são duas as formas:

1º pode ser dentro do projeto mvc_test em config/routes.rb

Porém aqui dentro temos:
Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Perceba que não mostra as rotas
Mostra uma sintaxe -> Rails.application.routes.draw do" que define um bloco de configuração de
rotas que é executado quando o aplicativo é inicializado e é responsável por definir todas as
rotas disponíveis para o aplicativo.


Veja que o resource cria as rotas para user
user é o nome que foi dado para os elementos Model, View e Controller
O resource como vimos anteriormente, é o metodo que cria as rotas para o user

Essas linhas de código é uma configuração de rota que define como o sistema irá tratar as
solicitações HTTP recebidas pelo aplicativo para a rota "/users".

Ela define uma rota para o recurso "users" que pode ser acessado por meio de solicitações HTTP
para os endpoints padrão de CRUD (Create, Read, Update, Delete) que correspondem às ações de
um controlador RESTful

Isso significa que, quando um usuário faz uma solicitação HTTP para o endpoint "/users",
o Rails roteia essa solicitação para o controlador "UsersController" correspondente, que então
lida com a solicitação e retorna a resposta apropriada

2º é mais fácil de entender é digitar junto o endereço do meu servidor o: /rails/info/routes

o endereço completo fica assim:
localhost:3000/rails/info/routes

Este endereço me leva para uma pagina no browser com as rotas que foram criadas na minha
aplicação

Temos 4 coluna na pagina
 Help – HTTP Verbo – Path – Controller#Action

Como dito temos as rotas da minha aplicação disponíveis nesta pagina.
Com isso temos como exemplo:

Na primeira linha temos a coluna HTTP Verbo com o verbo → Get  e, ao lado dela, na coluna
Path(caminho) tenho → /users(.:format) onde "user" é uma rota
Essa rota "user" vai me levar para users#index da coluna Controller#Action, ou seja,
controller é "user" e action "index"

Na segunda linha tenho o Verbo→ POST com  /users(.:format) onde serei levado para users#create
da coluna Controller#Action, ou seja, controller é user e action(ação) é create(criar)
e assim sucessivamente para as demais linhas das colunas

                                Padrão de como as maquinas conversão
O usuário esta acostumado a ver de forma gráfica as coisas a sua frente na tela do computador
	Ele clica em um botão e a magica acontece

O usuário é o cliente, e onde fica a aplicação é o servidor, ou seja, cliente e servidor

Quando o cliente conversa com o servidor, por trás de tudo ele o faz pelo padrão REST
Representational State Transfer -> Transferência de estado representacional

É um estilo de arquitetura de software para sistemas distribuídos, é amplamente utilizado para
criar serviços web que podem ser acessados pela internet

Ele é baseado no protocolo HTTP e utiliza seus métodos de requisição que são:
GET, POST, PUT e DELETE
Com esses métodos podemos realizar operação em recursos como: dados ou arquivos, disponíveis
no servidor
Cada um desses recursos tem um identificador único, chamado de URL(Uniform Resource Locator -
localizador padrão de recursos)

Uma das principais vantagens do REST é a sua simplicidade e facilidade de implementação.
Ele usa formatos de dados comuns, como XML ou JSON, para representar as informações que são
transferidas entre o cliente e o servidor, tornando a comunicação mais eficiente e flexível

REST é altamente escalável e pode ser usado para criar sistemas distribuídos complexos que
suportam milhões de usuários e transações. Por essas razões, o padrão REST é amplamente adotado
em projetos de desenvolvimento de software e é considerado uma das principais tecnologias para
a criação de serviços web

                               Operações que cada método HTTP faz
GET: é usado para recuperar informações ou dados de um recurso específico na Web. Por exemplo,
se você inserir a URL de um site em um navegador, o navegador fará uma solicitação GET para
recuperar a página da Web.

POST: é usado para enviar dados para um servidor e criar um novo recurso na Web. Por exemplo,
um formulário de registro em um site geralmente usa uma solicitação POST para enviar os dados
do usuário para o servidor, que então cria uma nova conta de usuário.

PUT: é usado para atualizar um recurso existente na Web. Por exemplo, um aplicativo de
gerenciamento de tarefas pode usar uma solicitação PUT para atualizar as informações de uma
tarefa existente.

DELETE: é usado para excluir um recurso na Web. Por exemplo, um aplicativo de mídia social
pode usar uma solicitação DELETE para excluir uma postagem ou comentário que um usuário tenha
feito.

Resumindo
Get - pega e retorna informação do servidor
Post - envia informação para o servidor
Put - atualiza toda a informações de um recurso no servidor
Patch - atualiza parcialmente um recurso no servidor
Delete - exclui informações no servidor

                                   Padrão URL e Verbo

Depois da toda essa analise de como acontece as coisas, quando o usuário(cliente) escreve um
endereço no browser, que sei agora que é uma URL, e esta é unica, um identificador de um
recurso no servidor etc. tudo isso acontece porque houve uma requisição do user

E essa requisição tem esse padrão acima descrito, de funcionamento para que corra tudo bem na
aplicação

O padrão sempre usará a URL e um verbo

Exemplo:
Quando eu o cliente escrevo a URL localhost:3000 no browser e clico em enter, criei uma
requisição
Essa requisição para o servidor é uma requisição do tipo GET, ou seja, é para pegar esse
recurso que tem como identificação esta url no servidor

Isso é imutável, sempre que um user(cliente) digitar a URL no browser é uma requisição GET

Nesse contexto existe também a requisição POST, PATCH, DELETE etc.
Porém essas outras citadas não é possível velas através da URL, a não ser com uma ferramenta
especifica para mostra-lá como por exemplo o "postman"

Tendo isso em mente se eu digitar localhost:3000/user, no meu código essa rota cai em:
app/controllers/users_controller.rb
onde tenho esse código abaixo em Ruby:

class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end


É uma subclasse que significa controle de usuário, como subclasse de ApplicationController
herda os métodos que tem nesta classe.


                                       ApplicationController
ApplicationController -> Controlador de aplicativo: está é uma classe base em Rails usada como
controlador principal para os controladores do aplicativo, fornecendo uma camada de abstração
entre o servidor web e os controladores do aplicativo

Com ApplicationController é possível definir métodos para autenticação de usuários, autorização
de acesso, manipulação de erros etc.
Por isso os controladores da aplicação herda esta classe reutilizando essas ações

O ApplicationController também é responsável por definir o layout padrão que será usado em
todas as páginas do aplicativo. Ele permite que você defina um layout comum para todas as
páginas, como um cabeçalho, rodapé e barra de navegação, que serão usados em todas as páginas
do aplicativo.

Perceba meu GET na pagina localhost:3000/user

na coluna HTTP Verbo, que indica o verbo usado é o GET
Na coluna Path(caminho) é /users(.:format) ou seja é user
Por isso na url após a porta 3000 tenho o /user
isso cai em Controller#Action
Controller é o código acima que se chama users_controller.rb
e nela temos a subclasse UsersController que herda ações de ApplicationController
e nesta subclasse temos o método "index" que corresponde ao Action que está ao lado de
Controller -> Controller#Action
que é esse método abaixo

  # GET /users or /users.json
  def index
    @users = User.all
  end

O User.all é uma classe, sei que é porque está escrito com U maiúsculo, e por convenção classe
recebem a primeira letra maiúscula

Esta classe esta em model/user.rb
corresponde ao código abaixo

class User < ApplicationRecord
end

Classe User que é subclasse de ApplicationRecord(classe base para todos os models da aplicação
ApplicationRecord é uma classe do framework ActiveRecord, e serve para definir comportamentos
e métodos padrão que serão compartilhados entre todos os models do aplicativo

Tendo isso em mente o método o que User.all quer dizer é:
Trazer todos os usuários cadastrados no meu BD, e coloque nesta variável da classe @user

Perceba que a requisição do usuário tem uma rota localhost:3000/user
que cai em um controller
que vai no model pegar(GET) todos o usuário(User.all)
e o controller mostra em uma view para o usuário, a lista de usuários cadastrados como resposta



                              Mostrando para o usuário através da View

A pergunta é: Como o controller vai mostrar na View para o usuário?

Quando o Rails crias as rotas, através do scaffold(estrutura), ele usa um padrão
Se estamos falando de uma aplicação que é um cadastro de user, esse padrão é criar o MVC com o
nome apropriado para identificar cada parte da estrutura(scaffold)
Perceba que vimos user_controller.rb, user.rb etc. veja que cada arquivo com suas
responsabilidades recebe o nome user para classificar que são códigos para o user
Com as Views não será diferente
Dentro de app/views temos uma pasta users, dizendo que são views para o usuário

E dentro desta pasta users temos um arquivo chamado index.html.erb
este arquivo tem o código abaixo:

<p style="color: green"><%= notice %></p>

<h1>Users</h1>

<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
    <p>
      <%= link_to "Show this user", user %>
    </p>
  <% end %>
</div>

<%= link_to "New user", new_user_path %>

Esse código renderiza(cria o produto final) a resposta para o usuário
E este arquivo se chama index.html.erb

Perceba que no código do arquivo user_controller.rb temos o método index
  # GET /users or /users.json
  def index
    @users = User.all
  end

veja que existe um padrão de nomes que se ligam

Este arquivo index.html.erb vai trabalhar em conjunto com user_controller.rb recebendo algo
do método index do user_controller.rb

Como ja vimos anteriormente o .erb combina HTML, ou qualquer tipo de código de marcação com
código Ruby

Perceba também que temos a variável @user chamando o método .each em index.html.erb
Esta variavel esta no método index de user_controller.rb recebendo cada nome do usuário
cadastrado no BD

Aqui em index.html.erb temos o bloco de código Ruby ".each do || end" atuando na variável @user

Para cada usuário que conter na variável @user o bloco de código Ruby ".each do || end" em
index.html.erb vai imprimir na tela e o usuário verá cada user cadastrado no BD

                                      Cadastrando User na tela User

Quando entramos em http://localhost:3000/users
Na View, ou seja, na tela que foi apresentado ao usuário por essa rota, temos duas coisas:
1º o titulo da pagina que é -> Users
2º Uma flag chamada -> New user

Não me foi mostrado uma lista com usuários porque não cadastrei nenhum ainda

Para fazer isso cliquei em New user e a resposta foi:
Perceba que tenho dois campos para preencher
Apos preencher os campos com nome de user e email tive essa resposta:

User was successfully created.       aqui diz que o usuário foi criado com sucesso

Name: William                        o nome do user

Email: william@gmail.com              email do user

Edit this user | Back to users         Editar este usuário | Voltar para os usuários
Destroy this user                      Destruir este usuário


O endereço desta view agora http://localhost:3000/users/new e não mais  http://localhost:3000/users

Quando cliquei em Back to users, ou seja, para voltara tela anterior  tenho

Users
Name: William

Email: william@gmail.com

Show this user                       aqui é Mostrar este usuário

New user

Perceba que a rota agora é http://localhost:3000/users

                                   O fluxo correto dos elementos

O que tem que ficar claro com tudo isso é a importância de entender a responsabilidade de cada
elemento, o fluxos das coisas entre eles , como eles conversam e perceber tudo isso na aplicação
1º requisição do usuário(cliente)
2º Tudo passa pelo controller
3º O controller pode ou não ir para o model pegar informações no banco de dados
4º O controller empurra, transfere, redireciona os dados para a view
5º Esta view responde ao usuário, renderizando o que foi escrito em HTML para o user

Tudo passa pelo controller
Neste caso do aplicativo de cadastro do User, a renderização para o usuário, só acontece por
causa da variável @user que partiu do controller carregando a informação para View

Preciso fazer a seguinte pergunta e responder:
Como é feita a requisição?
Como essa requisição chega no controller?
O que o controller foi buscar em um model?
Como os dados foram parar na View?

                                   Criando uma nova rota

Como vimos o resource é um método de ajuda que cria as rotas para a aplicação
Este método se encontra em:
config/routes.rb
nele temos o seguinte código:

Rails.application.routes.draw do
  resources :users
end

Neste código temos:

Rails: se refere ao framework Ruby on Rails
application: se refere à aplicação Rails atualmente em execução
routes: se refere ao objeto responsável por definir as rotas da aplicação
draw: é um método que é chamado no objeto routes e é usado para definir as rotas da aplicação

Então essa linha -> Rails.application.routes.draw
quer dizer o seguinte:

Framework Rails, na aplicação atual crie rotas.

E essa linha -> resources :users quer dizer:

resources -> representa o dialogo acima,ou seja, da criação das rotas
:user -> que as rotas que serão criadas é para o -> :user

:user é o nome da tabela que está no arquivo de migração, e esta tabela tem os campos
nome e email.
Então o código inteiro quer dizer:

Para o Rails criar rotas para os campos nome e email que ficam na tabela :user, tabela
essa criada em migrate.

                         Se tirar as rotas que o scaffold criou?

O scaffold cria 7 rotas para o controller, as 7 tem relação com o CRUD
São as rotas: index, show, new, create, edit, update e destroy
Essas rotas permitem a realização das operações CRUD (Create, Read, Update, Delete) no
recurso "users" da minha aplicação
Apagando a linha "resources :users" dentro código do arquivo routes.rb
Automaticamente essas sete rotas deixaram de existir, e será necessário criá-las na mão

                                Adicionando as Rotas na mão
Dentro deste código citado acima é o lugar que se adiciona as novas rotas

Indo em config routes.rb vou escrever as sete rotas a mão desta forma:

1º se defini o verbo - GET, POST, PATCH, PUT etc
2º Da o nome para a rota entre aspas simples
3º inseri uma virgula após o nome e defini para qual método do arquivo user_controller
vai a rota
3.1 user_controller porque a requisição do user chega primeiro nele como vimos
3.2 Então depois do nome da virgula escreve a expressão -> to: que significa para
3.3 Dentro de aspas simples descreve o nome do método

	sintaxe:
	verbo 'nome_rota', to: 'nome#método'

exemplo:
  Rails.application.routes.draw do
    #resources :users

    get 'users', to: 'users#index'
    post 'users', to: 'users#create'
    get 'users', to: 'users#new'
    get 'users', to: 'users#edit'
    get 'users', to: 'users#show'
    patch 'users', to: 'users#update'
    put 'users', to: 'users#update'
    delete 'users', to: 'users#destroy'
  end

 Abaixo de resources :users criei as rotas que o scaffold tinha feito

 Quando escrevi no browser o localhost:3000/rails/info/routes tive a mesma pagina que o
 scaffold criou de forma automática
A unica diferença é que nesta pagina nova, a coluna Path/Url não tem os caminhos que o
scaffold tinha feito.

Quando escrevi a Url localhost:3000/user para ver a pagina User
recebi o seguinte erro:

    NoMethodError in Users#index
    Showing /home/william/workspace/estudoruby/Curso_Ruby/4MVC/mvc_test/app/views/users/
    index.html.erb where line #9 raised:

    undefined method `user_path' for #<ActionView::Base:0x0000000000afa0>
    Did you mean?  users_path
    Extracted source (around line #9):
    7    <%= render user %>
    8    <p>
    9     <%= link_to "Show this user", user %>
    10   </p>
    11  <% end %>
    12  </div>

    Rails.root: /home/william/workspace/estudoruby/Curso_Ruby/4MVC/mvc_test

Este erro é causado pelo fato de eu ter definido as rotas manualmente e, com isso a
rotas do recurso "user" criadas pelo scaffold através do resource não estão mais disponíveis
Mesmo assim o arquivo da view chamado "index.html.erb" dentro da pasta "users", na sua linha
9 tem um trecho de código, que é um link, e após virgula da palavra "Show this user"
indica o uso de "user", que é um helper -> user_help que é uma rota padrão definida pelo
método resources :users. Como este ultimo foi retirado de Rails.application.routes.draw o
método  "user_help" não funciona mais

Para resolver esse erro preciso indicar na linha 9, ao link_to a rota manual que criei

O helper link_to aceita uma URL como seu segundo argumento. Então, em vez de usar
user_path(user) como faria com resources :users, vou precisa passar a URL manualmente ficando
assim:
    <%= link_to "Show this user", "/users/#{user.id}" %>

Desta forma estou construindo a url manualmente, usando a rota definida no arquivo rout.rb
na linha 8, para o método "show" do código abaixo

 get 'users', to: 'users#show'

Em suma, foi definido rotas manualmente no arquivo routes.rb, com isso não haverá helpers
de rota gerados automaticamente como user_path. Em vez disso, é necessário construir a
URL manualmente para cada rota que foi definida.


Partindo disso fui onde é preciso e passei a Url
Porém quando fiz a requisição no browser tiver essa resposta

   NameError em Users#index
   Mostrando /home/william/workspace/estudoruby/Curso_Ruby/4MVC/mvc_test/app/views/users/index.html.erb onde a linha #14 levantou:
   
   undefined local variable or method `new_user_path' for #<ActionView::Base:0x0000000000ad98>
   Fonte extraída (em torno da linha #14 ):
   12  </div>
   13
   14  <%= link_to "Novo usuário", new_user_path %>
   
   Rails.root: /home/william/workspace/estudoruby/Curso_Ruby/4MVC/mvc_test
   
   Rastreamento de aplicativo | Rastreamento de estrutura | Rastreamento Completo
   app/views/users/index.html.erb:14

Aqui a variável new_user_path não foi definida no projeto
Isso porque ao retirar o resource :users
Ao usar o resource :users o Rails gera vários helper de rota, e aqui esta mais um
Esta variavel é usada para gerar "url"  para pagina de criação de um novo usuário
Não vou resolver este caso, porque não vai ser somente neste  lugar que vai dar erro, pois
como explicado acima o Rails gera vários helper
Em um curso mais especifico como protocolo HTTP, API RESTFUL etc. vou aprender a gerar
todas as minhas rotas manualmente.

Vou voltar a linha do resource :user remover a adição do "/users/#{user.id}" do link e tudo
ficara certo como antes.

                                           Resumo
Minha aplicação é um cadastro de usuários
Esse cadastro tem dois campos Nome e Email, são essas as informações que serão armazenadas
Minha aplicação tem a Arquitetura o MVC
MVC é Model, View e Controller
  Model cuida do armazenamento das informações
  View cuida de mostrar a interface gráfica ao usuário
  Controller tem a responsabilidade de pegar a requisição do usuário e trabalhar ela, sendo
  buscar uma informação ao usuário no BD e enviar essa resposta ao user
Esses elementos conversão entre sí
A arquitetura veio para resolver um problema, que era: as aplicação eram feitas em um único
arquivo, e quando essa aplicação recebia mais recurso, crescia -> escalava, com isso ficava
ruim dar a manutenção visto que era um único arquivo. Com o MVC a manutenção acontece
exatamente no local que ela precisa, sem ter que mexer no arquivo inteiro
Se esta manutenção é no BD, será mexido somente no Model, se na interface gráfica será mexido
somente na View e etc

Nesta aplicação fiz o CRUD, nome que se chama na area de devs para:
O CRUD é create, read, update e delete, e são as ações que atuarão nas informações
Criando o CRUD
  Criando o projeto
    A criação do projeto foi feita automaticamente pelo comando:
     rails new mvc_test

  Criando o crud user com scaffold
    A criação do crud foi feita com o comando
     rails g scaffold User :nome :email
      Visto que o nome da tabela é User, todo o esqueleto criado, ou seja, em todas as partes
	  do MVC, onde for relacionado a essa tabela User tera esse nome, indicando que os elementos
      criados são para o user


Funcionamento do dialogo entre os elementos
 Cliente e Servidor
  O user é o cliente e o servidor é um local onde esta o recurso que o user precisa
   1º O usuário dispara uma requeste -> requisição
   2º esta requisição precisa de uma rota, essa rota é a url
    2.1º Url é uma identificação para um recurso que esta no servidor, quando o user digita o
	url no browser ele esta acessando o servidor, e assim acessando minha aplicação que foi
	colocada neste servidor e tem essa identificação que o user digitou no browser

   3º A requisição (url) cai em um controller, um dos elemento do MVC que tem a responsabilidade
	de analisar a requisição (url) e ir no lugar de identificação desta para trazer as
	informações

   4º essa informação o Controller envia para a View, que é a resposta para o user


Todas essas coisas acontecem porque tem lógica nó código
Os código estão em arquivo
Esses arquivos são escritos nas seguintes tecnologias: Ruby, Rails, Json, HTML, protocolo HTTP
e seus verbos GET, POST, PATCH, PUT, DELETE etc. respeitando a arquitetura RESTFull

Rotas
 As requisições(url) ficam gravadas no arquivo routes.rb dentro de config
  este arquivo usa um help method chamado resource para criar as rotas automaticamente

Controller
  O código principal do Controller fica escrito em user_controller.rb que esta em
  app/controllers


Model
  Com relação a o armazenamento
   1º Migration cria as tabelas, através do framework ActiveRecord
	  O arquivo de migration fica em db/migrate

   2º a tabela é criada no arquivo user.rb que está em app/model, e este é subclasse de
      ApplicationRecord
    2.1º ApplicationRecord esta no arquivo application_record.rb e é uma classe de
	     ActiveRecord


View
  Com relação a visualização
    São criadas automaticamente usando extensão de arquivo .erb
    Esses arquivos estão em app/view/user
	erb -> Embedded Ruby significa -> Ruby embutido, combina HTML, json e qualquer arquivo de
	marcação, etc. com código Ruby
    Aqui tem código para criar o formulário, com os nomes dos campos para preenchimento, código
	para criar uma lista com todos os user cadastrados, código que mostra na tela essa lista
	para o user, código para receber e adicionar um novo user ao bd


Exemplo de dialogo entre controller e model:
  Quando o user colocar a URL localhost:3000/user no browser
  Ele esta pedindo para ver a lista de usuários
  Neste caso temos uma requisição que é ver a lista dos usuários na aplicação quado o user passa
  -> localhost:3000 mais a / e o nome user
 
   A rota cai no controller, especificamente no arquivo user_controller.rb onde o método index
   que recebe a rota
   veja o código:

     def index
      @users = User.all
     end

Perceba que uma variável na classe @user recebendo a classe User
Essas classe User esta no model, no arquivo user.rb
Veja o código:

    class User < ApplicationRecord
    end

Perceba que User é subclasse de ApplicationRecord
ApplicationRecord está no model também
Veja o código:

    class ApplicationRecord < ActiveRecord::Base
      primary_abstract_class
    end

Então quando o user escreve a url no browser contendo o /user, isso quer dizer que é para
a lista de usuários cadastrados
A url cai no controller, justamente nesse código que tem o método index, que tem a classe User
User sabemos que é a classe
O .all é um método que significa que é para trazer todos os usuários cadastrados da classe User

Sabemos que a classe user é na verdade uma subclasse de ApplicationRecord
E ApplicationRecord é na verdade uma classe do framework ActiveRecord
 Perceba que o código diz que Application Record tem uma herança de ActiveRecorde que é o Base
 isso significa que ApplicationRecord vai atuar na função da criação da tabela e em seu
 comportamento que no caso é o CRUD, ou seja, criar, ler, atualizar e deletar informação nessa
 tabela User.

 Mas no caso o ApplicationRecord vai simplesmente usar o método GET, para pegar os user na
 tabela

O retorno desta lista volta para o Controller no método index
Na view temos o arquivo index.html.erb
veja o código abaixo:

<p style="color: green"><%= notice %></p>

<h1>Users</h1>

<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
    <p>
      <%= link_to "Show this user", user %>
    </p>
  <% end %>
</div>

<%= link_to "New user", new_user_path %>

Perceba que tem a variavel @user, a mesma que esta recebendo a classe User.all no controller
Ela esta carregando a lista dos user para a view passada pelo controller
A variavel chama o método .each que faz um loop em todos os registros


<h1>Users</h1> - Exibe um cabeçalho "Users" em negrito na página.

<div id="users">...</div> - Define um bloco HTML com um identificador "users", que será usado
para estilizar o conteúdo com CSS.

<% @users.each do |user| %> - Itera sobre uma lista de usuários que foram passados para a view
pelo controlador e armazena cada usuário na variável |user|

<%= render user %> - Renderiza uma visão parcial para cada usuário na lista, usando o método
render. A visão parcial é um modelo que define como cada usuário deve ser exibido na lista.

<p>...</p> - Define um parágrafo HTML para cada usuário exibido na lista.

<%= link_to "Show this user", user %> - Cria um link para exibir os detalhes do usuário clicado
usando o método link_to. O texto do link é "Show this user" e o destino é a página de detalhes
do usuário.

<% end %> - Encerra o loop each.

<%= link_to "New user", new_user_path %> - Cria um link para criar um novo usuário, usando o
método link_to. O texto do link é "New user" e o destino é a página de criação de usuário.

Em resumo, essa view exibe uma lista de usuários e fornece links para visualizar os detalhes
de cada usuário individualmente ou criar um novo usuário.


Quanto a criar, ler atualizar, deletar tem método no controller que vai atuar fazendo isso, e
ao finalizar as ações chama o model e a view, na ordem das solicitações a fim que o user tenha
o que deseja

=end
