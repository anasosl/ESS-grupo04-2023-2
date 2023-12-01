Scenario: cadastrar filme novo
    Given eu estou na página “cadastro de conteúdo”
    And a obra “O Poderoso Chefão” não está cadastrada no site
    when eu preencho o campo “título” com “O Poderoso Chefão”
    And eu preencho o campo “diretor” com “Francis Ford Coppola”
    And eu preencho o campo “ano” com “1972”
    And eu salvo o cadastro
    Then eu estou na página “visualização de conteúdo”
    And eu vejo a mensagem “O Poderoso Chefão foi cadastrado com sucesso”
    And eu vejo “O Poderoso Chefão” como título da obra
    And eu vejo “Francis Ford Coppola” como diretor da obra

Scenario: cadastrar filme repetido
    Given eu estou na página “cadastro de conteúdo”
    And a obra “Laranja Mecânica” com ano “1971” já está cadastrada no site 
    And eu preencho o campo “título” com “Laranja Mecânica”
    And eu preencho “ano” com “1971”
    when eu salvo o cadastro
    Then eu vejo a mensagem “Laranja Mecânica (1971) já foi cadastrado por outro usuário”
