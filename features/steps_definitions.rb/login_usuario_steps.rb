Dado("que eu estou na tela inicial do Iggle") do
  visit root_url
end

Dado("pressiono o botão {string}") do |string|
  find('[name=Login]').click
end

Então("eu deveria estar na página de seleção do login") do
  visit entrar_path
end

Quando("eu clicar no botão cliente") do
  find('[name=cliente]').click
end

Quando("preencher os dados de autenticação do usuário-contratante corretamente") do
  fill_in("email_login_cliente", with: 'florzinha.poderosa@gmail.com')
  fill_in("password_login_cliente", with: 'zldmald1$L')
end

Quando("pressionar o botão {string}") do |string|
  find('[name=Entrar]').click
end

Então("eu deveria estar na página inicial do usuário-contratante") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("não preencher os dados de autenticação do usuário-contratante") do
  fill_in("email_login_cliente", with: '')
  fill_in("password_login_cliente", with: '')
end

Então("é para exibir {string}") do
  expect(page).to have_content('Email ou senha inválidos')
end
