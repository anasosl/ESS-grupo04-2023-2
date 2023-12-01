Feature: Usuário Comum

Scenario: Edição de nome do perfil

    Given estou na tela de “Edição do perfil”
    When eu preencho o campo “Novo nome do perfil”
    And eu preencho o campo “Data de nascimento”
    And eu preencho o campo “Foto”
    And eu clico no botão “Confirmar”
    Then eu sou redirecionado para a página do meu perfil
    And o meu nome estará alterado
