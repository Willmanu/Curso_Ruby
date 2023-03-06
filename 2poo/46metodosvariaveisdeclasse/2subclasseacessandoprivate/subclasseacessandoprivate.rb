require '/home/william/workspace/estudoruby/Curso_Ruby/'\
'2poo/46metodosvariaveisdeclasse/2subclasseacessandoprivate/'\
'minhaclasseprivate'
=begin
  Este endereço ficou muito grande e pode dificultar a leitura.
  Por esse motivo usei uma barra para esquerda para quebrar a linha e assim a visualização ficar mai fácil
=end
=begin

Aqui vou criar uma classe chamada Subclasse que tém um método m4.
Está classe vai receber de herança uma classe chamada MinhaClassePrivate, que está neste mesmo
diretório, contendo os métodos m2 e m3 privados.
Vamos ver como se comporta esta classe chamada subclasse quando tenta acessar os métodos
private da classe MinhaClassePrivate.

Aqui está o endereço de MinhaClassePrivate:
'./2poo/46metodosvariaveisdeclasse/2subclasseacessandoprivate/minhaclasseprivate'
Esse endereço esta no require na primeira linha deste arquivo
Essa Classe abaixo:

class MinhaClassePrivate
  def m1
    p 'Método 1'
  end

  private

  def m2
    p 'Método 2'
  end

  def m3
    p 'Método 3'
  end
end
obj = MinhaClassePrivate.new
obj.m1

Vejamos:

=end

# Subclasse recebendo MinhaClassPrivate
class Subclasse < MinhaClassePrivate
  def m4
    puts 'Método 4'
    m1
    m2
    m3
  end
end

objsubclasse = Subclasse.new
objsubclasse.m4

=begin

O resultado do acesso aos métodos m2 e m3 da classe MinhaClassePrivate foi sucesso
veja a impressão:

[Running] ruby "/home/william/workspace/estudoruby/Curso_Ruby/2poo/46metodosvariaveisdeclasse/
2subclasseacessandoprivate/subclasseacessandoprivate.rb"

"Método 1"                   esta é a impressão que esta na classeMinhaClassePrivate
Método 4                     Esse as demais abaixo são a impressão de Subclasse
"Método 1"
"Método 2"
"Método 3"

Mesmo que em MinhaClassePrivate os métodos m2 e m3 sejam privados a Subclasse consegue acessar.
Isso porque os métodos estão no mesmo objeto.
O ruby permite que os métodos private sejam impressos nas subclasse, se estes forem do mesmo
contexto, ou seja, do mesmo objeto em memória.

=end
