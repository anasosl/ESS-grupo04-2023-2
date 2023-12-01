Feature: Gerenciamento de posts

    As a usuário comum
    I want to criar, editar e remover posts
    So that eu possa compartilhar meus reviews com outros usuários

    Scenario: Criar um novo post
        Given eu estou na página do conteúdo "O Senhor dos Anéis"
        And eu estou logado como o usuário "@lgmmn"
        When eu seleciono a opção "Novo Post"
        And eu preencho o campo "Título" com "Filme muito bom"
        And eu preencho o campo "Conteúdo" com "O filme é muito bom!"
        And eu seleciono a opção "4 estrelas" no campo "Avaliação"
        And eu seleciono a opção "Publicar"
        Then eu vejo o post "Filme muito bom" na página do conteúdo "O Senhor dos Anéis
	    And eu vejo o post "Filme muito bom" na página de posts do usuário "@lgmmn"

    Scenario: Editar conteúdo de um post do usuário
        Given eu estou na página do post "Filme muito bom" de "@lgmmn"
        And o post "Filme muito bom" possui o conteúdo "O filme é muito bom!"
        And eu estou logado como o usuário "@lgmmn"
        When eu seleciono a opção "Editar conteúdo"
        And eu preencho o campo "Conteúdo" com "O filme é muito bom! Recomendo!"
        And eu seleciono a opção "Editar"
        Then eu vejo "O filme é muito bom! Recomendo!" no campo "Conteúdo" na página do post "Filme muito bom" de "@lgmmn"
        And eu vejo a mensagem "Post editado com sucesso!"

    Scenario: Excluir um post do usuário
        Given eu estou na página de posts do usuário "@lgmmn"
        And eu estou logado como o usuário "@lgmmn"
        And a página possui o post "O Senhor dos Anéis"
        When eu seleciono a opção "Excluir" do post "O Senhor dos Anéis"
        Then eu não vejo o post "O Senhor dos Anéis" na página de posts do usuário "@lgmmn"

    Scenario: Criar novo post do mesmo conteúdo de um post já existente
        Given eu estou na página de posts do usuário "@lgmmn"
        And eu estou logado como o usuário "@lgmmn"
        And a página possui o post "O Senhor dos Anéis"
        When eu seleciono a opção "Novo Post"
        And eu preencho o campo "Conteúdo" com "O filme é muito bom!"
        And eu seleciono a opção "4 estrelas" no campo "Avaliação"
        And eu seleciono a opção "Publicar"
        Then eu vejo a mensagem "Já existe um post desse conteúdo para esse usuário!"