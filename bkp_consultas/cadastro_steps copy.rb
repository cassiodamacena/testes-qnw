Dado("que acesso a página de cadastro") do
  visit "http://parodify.qaninja.com.br"
  click_on "EXPERIMENTE AGORA"
end

Quando("submeto o meu cadastro com:") do |table|
  user = table.rows_hash

  delorean user[:email]

  find("input[name*=email]").set user[:email]
  find("input[placeholder='Sua senha secreta']").set user[:senha]
  find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

# Step cadastro sem EMAIL
Quando("submeto o meu cadastro sem o email") do
  find("input[placeholder='Sua senha secreta']").set "123456"
  find("input[placeholder='Confirme a senha']").set "123456"

  click_on "Cadastrar"
end

Então("devo ver Oops! Informe seu email") do
  alert = find(".message p")
  expect(alert.text).to eql "Oops! Informe seu email."
end

# Step sem senhas informadas
Quando("submeto o meu cadastro sem a senha") do
  find("input[name*=email]").set "cassio@damcena.com.br"

  click_on "Cadastrar"
end

Então("devo ver Oops! Informe sua senha") do
  alert = find(".message p")
  expect(alert.text).to eql "Oops! Informe sua senha."
end
