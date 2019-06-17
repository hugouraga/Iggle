Dado("que eu visito a página inicial") do
  visit root_url
end

Dado("eu clico no botão Cadastro") do
  find('[name=Cadastro]').click
end

Então("eu vou para a página de seleção de cadastro") do
end

Quando("eu clicar no botão Cliente") do
  find('[name=Cliente]').click
end

Quando("for para a página cadastro_cliente") do
end

Quando("eu preencher o novo formulário de usuário com nome e email e telefone e senha") do
  fill_in("user_name", with: 'Florzinha')
  fill_in("user_email", with: 'florzinha.poderosa@gmail.com')
  fill_in("user_phone", with: 9999999999)
  fill_in("user_password", with: 'zldmald1$L')
  fill_in("user_passwordc", with: 'zldmald1$L')
end

Quando("clicar no botão {string}") do |string|
  find('[name=Salvar]').click
end

Então("a mensagem {string} será exibida na página inicial") do |string|
  expect(page).to have_content('Usuário cadastrado com sucesso')
end

Quando("eu não preencher o novo formulário de usuário com nome e email e telefone e senha") do
  fill_in("user_name", with: '')
  fill_in("user_email", with: '')
  fill_in("user_phone", with: '')
  fill_in("user_password", with: '')
  fill_in("user_passwordc", with: '')
end

Então("a mensagem {string} será exibida") do |string|
  expect(page).to have_content('Ops! Encontramos 6 erros')
end
