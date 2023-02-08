# Define-as dentro de aspas duplas ou simples
# Dentro de aspas duplas é preferível quando se usa interpolação

nome = "William"
nome2 = 'Emanuel'
puts nome
puts nome2

# Para transformas outros tipos em texto basta usar o %q(meu texto)

texto = %q(12345 10.000)
puts texto
puts texto.class # aqui ele mostra o tipo da variável