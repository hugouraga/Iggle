Dado("que eu visito a página inicial") do
  visit root_url
end

Dado("clique no botão Cliente") do
  find('[name=Cliente]').click
end

Dado("vá para a página cadastro_cliente") do
end

Quando("eu preencher o novo formulário de usuário com nome e email e telefone e senha") do
  fill_in("user_name", with: 'Florzinha')
  fill_in("user_email", with: 'florzinha.poderosa@gmail.com')
  fill_in("user_phone", with: 999999999)
  fill_in("user_password", with: 'zldmald1$L')
  fill_in("user_passwordc", with: 'zldmald1$L')
end

Quando("clicar no botão {string}") do |string|
  find('[name=Salvar]').click
end

Então("a mensagem {string} será exibida na página inicial") do |string|
  expect(page).to have_content('Usuário cadastrado com sucesso')
end
