#language: pt

Funcionalidade: Cadastro de Usuário
Sendo um visitante do site Parodify
Quero fazer o meu cadastro
Para que eu possa ouvir minhas músicas favoritas

@happy
Cenário: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
        |email|cassio.damacena@hotmail.com|
        |senha|123456|
        |senha_confirma|123456|
    Então devo ser redirecionado para a área logada


Cenário: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email
    Então devo ver Oops! Informe seu email

@temp
Cenário: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então devo ver Oops! Informe sua senha

Cenário: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver Opps! Senhas não são iguais

Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
