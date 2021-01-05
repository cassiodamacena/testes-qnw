#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha_confirma
    Para que eu possa ter acesso as playlists do Parodify

    Cenário: Login do usuário
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "cassiodamacena@hotmail.com" e "123456"
        Então devo ser redirecionado para a área logada


    Esquema do Cenário: Tentativa de login
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"
        Exemplos:
            | email                      | senha  |
            | cassio@cassio.com.br       | abc123 |
            |                            |        |
            | cassiodamacena@hotmail.com | abc123 |
            | cassiodamacena@hotmail.com |        |
            | cassio@404.com             |        |
