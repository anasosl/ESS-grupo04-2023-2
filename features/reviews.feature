Cenário 1 - Criação de Reviews
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “O Poderoso Chefão”
When Eu aperto em “Escrever review”
Then Surge uma janela de preenchimento de review
When Eu preencho o texto do review
And Eu dou a nota “4.5” para o filme “O Poderoso Chefão”
And Eu clico em “Confirmar”
Then Aparece uma mensagem “Concluído”
And Eu vejo o review na região “Reviews” abaixo do filme

Cenário 2 - Falha ao adicionar review: sem texto
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “Os Incríveis”
When Eu aperto em “Escrever review”
Then Surge uma janela de preenchimento de review
When Eu clico em “Confirmar”
Then Aparece uma mensagem “Falha ao adicionar review”

Cenário 3 - Falha ao adicionar review: sem nota
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “Divertidamente 2”
When Eu aperto em “Escrever review”
Then Surge uma janela de preenchimento de review
When Eu preencho a aba de texto
And Eu clico em “Confirmar”
Then Aparece uma mensagem “Falha ao adicionar review”

Cenário 4 - Remoção de Review
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “O Poderoso Chefão”
And Eu vejo o meu review realizado
When Eu clico no review realizado
And Eu clico em “Apagar”
Then O review do usuário “Pedro” de “O Poderoso Chefão” é apagado

Cenário 5 - Edição do Review
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “O Poderoso Chefão”
And Eu vejo o meu review realizado
When Eu clico no review realizado
And Eu clico em “Editar"
Then Surge uma janela de edição
When Eu altero o campo de texto do review
And Eu altero a nota de 3.5 para 4.5
And Eu clico em "Salvar"
Then O review para "O Poderoso Chefão" é atualizado
