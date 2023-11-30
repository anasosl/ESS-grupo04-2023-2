Feature: Gerenciamento de posts

    As a usuário comum
    I want to criar, editar e remover posts
    So that eu possa compartilhar meus reviews com outros usuários

    Scenario: Criar um novo post de um conteúdo
        Given eu estou na página do conteúdo “O Senhor dos Anéis”
        And eu estou logado como o usuário "@lgmmn"
        When eu seleciono a opção "Novo Post"
        And eu preencho o campo “Título” com “Filme muito bom!”
        And eu preencho o campo "Conteúdo" com "O filme é muito bom!"
        And eu seleciono a opção "4 estrelas" no campo "Avaliação"
        And eu seleciono a opção "Publicar"
        Then eu vejo o post "Filme muito bom" na página do conteúdo “O Senhor dos Anéis”
	    And eu vejo o post “Filme muito bom” na página de posts do usuário “@lgmmn”