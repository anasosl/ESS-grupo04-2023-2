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
