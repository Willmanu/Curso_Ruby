=begin
                            Arquitetura MVC
O Ruby & Rails trabalha com essa arquitetura

M == Model
V == View
C == Controller

Model é o código que vai se conectar com o BD

View é a tela que o usuário ve e inseri coisas.

Controller é a ação do usuário. São códigos que recebem requestes(o endereço http etc.) do navegador,
ou seja, recebem coisas do usuário.

A requeste chega e cai em uma rota.
Após isso um Controller, um código, que reponde por essa rota, podendo ter um model
que se comunica com o banco de dados, pega os dados e manda novamente para o controller
que por sua vez manda para visualização (view). Essa responde para o navegador do usuário e este
vê sua resposta.

=end