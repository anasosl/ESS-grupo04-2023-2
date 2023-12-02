Cenário 1 - Criação de Review
Given Eu estou logado com o usuário “Pedro”
And Eu estou na aba do filme “O Poderoso Chefão”
When Eu aperto em “Escrever review”
Then Surge uma janela de preenchimento de review
When Eu preencho o texto do review
And Eu dou a nota “4.5” para o filme “O Poderoso Chefão”
And Eu clico em “Confirmar”
Then Aparece uma mensagem “Concluído”
And Eu vejo o review na região “Reviews” abaixo do filme
