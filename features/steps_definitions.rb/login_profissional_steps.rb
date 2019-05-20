Quando("eu clicar no botão profissional") do
  find('[name=profissional]').click
end

Quando("preencher os dados de autenticação do profissional corretamente") do
  fill_in("email_login_profissional", with: 'lindinha.nutri@gmail.com')
  fill_in("password_login_profissional", with: 'a1z21444#A')
end

Então("eu deveria estar na página inicial do profissional") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("não preencher os dados de autenticação do profissional") do
  fill_in("email_login_profissional", with: '')
  fill_in("password_login_profissional", with: '')
end
