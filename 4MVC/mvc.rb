=begin

Model
View
Controller

É um padrão de arquitetura de software que separa a representação da informação da interação do
usuário

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

Controller sua função é receber a requisição, e baseado nisto, pode ou não buscar um dado
em um model e mostrar na View




=end
