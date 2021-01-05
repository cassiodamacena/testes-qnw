#language: pt

Funcionalidade: Cadastro de Usuário
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | cassio.damacena@hotmail.com |
            | senha          | 123456                      |
            | senha_confirma | 123456                      |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativas de cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                       | senha  | senha_confirma | mensagem_saida                       |
            |                             | 123456 | 123456         | Oops! Informe seu email.             |
            | cassio.damacena@hotmail.com |        |                | Oops! Informe sua senha.             |
            | cassio.damacena@hotmail.com | 123456 | 654321         | Oops! Senhas não são iguais.         |
            |                             |        |                | Oops! Informe seu email e sua senha. |

    # Técnica de Matriz de Cenário deve ser utilizada no momento mais avançado da automação;
    # No início utilizar o BDD mais básico, pois, ajuda mais no entendimento dos comportamentos tanto para o Tester, como o Dev e P.O.

    @temp
    Cenário: Validação do campo email
        Quando acesso a pagina de cadastro
        Então deve exibir o seguinte css: "input[type=email]"