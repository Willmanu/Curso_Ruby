=begin

Model
View
Controller

É um padrão, de arquitetura de software, que separa a, representação da informação,
da interação do usuário

                                   Problema que o MVC resolve

Ela foi criada para resolver um problema
E qual seria?

Quando se cria um aplicação web, esta é colocada em um servidor.
Uma pessoa vai acessar o browser e vai acessar essa aplicação que esta em um servidor
Essa aplicação pode ser feita em um único arquivo
Porém quando se começa a criar novas funcionalidades para esse arquivo a tendencia é
ele ir aumentando
Vai inchando inchando até se tornar uma bola de neve
Este fato quer dizer que se criar uma aplicação, e ela for crescendo de forma desorganizada,
e muito fácil ter um problema
Principalmente em uma aplicação que atende muitas pessoas, será normal precisar criar novas
funcionalidades e assim essa aplicação crescer ou como diz na programação -> escalar.
E com isso muita manutenção no futuro

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
Entra no controller e assim é distribuídas para outras parte se necessário: View e Controller

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
1º cria um projeto com:
rails new nome_projeto(mvc_teste)

2º dentro do projeto usa-se o comando:
rails g scaffold User name:string email:string

o g é de generate


                                           scaffold

O vem emprestado de construção civil e quer dizer -> pré-moldado ou andaime - faz
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


                "teste_unit" Framework de teste de unidade Ruby on Rails
Aqui
 invoke    test_unit
    create      test/models/user_test.rb
    create      test/fixtures/users.yml

O Rails invoca e cria arquivos de teste
teste_unit é um framework de teste de unidade padrão que vem com o Ruby on Rails
Usado para escrever teste automatizados com o intuito de verificar se o código funciona
corretamente
observação: 

=end
