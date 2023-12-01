Feature: Usuário Comum

Scenario: Edição de nome do perfil

    Given estou na tela de “Edição do perfil”
    When eu preencho o campo “Novo nome do perfil”
    And eu preencho o campo “Data de nascimento”
    And eu preencho o campo “Foto”
    And eu clico no botão “Confirmar”
    Then eu sou redirecionado para a página do meu perfil
    And o meu nome estará alterado

Scenario: Remoção de Usuário

    Given estou na tela “Remover perfil”
    When eu preencho o campo de segurança
    And clico no botão “Confirmar”
    Then eu sou redirecionado para página inicial do sistema
    And meu perfil estará removido

Scenario: Edição de senha de Usuário

    Given estou na tela de “Edição do perfil”
    When eu preencho os campos “Nova senha” e “Confirme sua nova senha”
    And eu clico no botão “Confirmar”
    Then eu sou redirecionado para a página do meu perfil
    And a minha senha estará alterada
    And uma mensagem "Senha alterada com sucesso!" aparece