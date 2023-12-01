Scenario: cadastrar filme novo
    Given eu estou na página “cadastro de conteúdo”
    And a obra “Scarface” não está cadastrada no site
    when eu preencho o campo “título” com “Scarface”
    And eu preencho o campo “diretor” com “Brian de Palma”
    And eu preencho o campo “ano” com “1972”
    And eu salvo o cadastro
    Then eu estou na página “visualização de conteúdo”
    And eu vejo a mensagem “Scarface” foi cadastrado com sucesso”
    And eu vejo “Scarface” como título da obra
    And eu vejo “Brian de Palma” como diretor da obra

Scenario: editar conteúdo cadastrado
    Given eu estou na página “conteúdos”
    And eu vejo “Batman O Cavaleiro das Trevas” como título da obra
    And eu vejo “Alan Moore” como autor da obra
    when eu seleciono “edição”
    And eu atualizo o campo “autor” para “Frank Miller”
    And salvo a edição
    Then eu vejo a mensagem “Edição realizada com sucesso”
    And eu vejo “Batman O Cavaleiro das Trevas” como título da obra
    And eu vejo “Frank Miller” como autor da obra

Scenario: deletar conteúdo cadastrado
    Given eu estou na página “conteúdos”
    And eu vejo “Batman O Cavaleiro das Trevas” como título da obra
    When eu deleto “Batman O Cavaleiro das Trevas”
    Then eu vejo a mensagem “Batman O Cavaleiro das Trevas foi deletado com sucesso”
    And não vejo mais “Batman O Cavaleiro das Trevas” na página “conteúdos”

Scenario: cadastrar filme repetido
    Given eu estou na página “cadastro de conteúdo”
    And a obra “Laranja Mecânica” com ano “1971” já está cadastrada no site 
    And eu preencho o campo “título” com “Laranja Mecânica”
    And eu preencho “ano” com “1971”
    When eu salvo o cadastro
    Then eu vejo a mensagem “Laranja Mecânica (1971) já foi cadastrado por outro usuário”

Scenario: cadastrar livro sem título
    Given eu estou na página “cadastro de conteúdo”
    And eu não preencho o campo “título”
    And eu preencho “autor” com “JRR Tolkien”
    When eu salvo o cadastro

    Then eu vejo a mensagem “Obra sem título não pode ser cadastrada”
    And continuo na página "cadastro de conteúdo"

Scenario: mostrar conteúdo
    Given eu estou na página “conteúdos”
    And eu vejo “Scarface” como título da obra
    When eu seleciono “Scarface”
    Then eu estou na página “visualização de conteúdo”
    And eu vejo “Scarface” como título da obra
    Then eu vejo a mensagem “Obra sem título não pode ser cadastrada”

Scenario: cadastrar livro sem título
    Given eu estou na página “cadastro de conteúdo”
    And eu não preencho o campo “título”
    And eu preencho “autor” com “JRR Tolkien”
    when eu salvo o cadastro
    Then eu vejo a mensagem “Obra sem título não pode ser cadastrada”
