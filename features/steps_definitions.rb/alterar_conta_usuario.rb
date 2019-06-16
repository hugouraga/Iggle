Dado("que estou logado em meu perfil") do
end

Dado("clico na aba sidebar") do
    find('[id=openbtn]').click
end

Dado("clico na sessão {string}") do |string|
    find('[id=Conta]').click
    save_and_open_page
end

Então("eu deveria está na página de alteração de conta do cliente") do
    visit edit_normal_user_path
end

Quando("alterar os dados necessários do formulário cliente") do
    fill_in("user_name", with: 'teste123')
    fill_in("user_email", with: 'teste123@gmail.com')
    fill_in("user_phone", with: 9999999999)
    fill_in("user_password", with: '1234567890')
    fill_in("user_passwordc", with: '1234567890')
end

Quando("clicar no botão para {string}") do |string|
    find('[name=Salvar]').click
    save_and_open_page
end

Então("meus dados são atualizados com sucesso") do
    expect(page).to have_content('Dados atualizados com sucesso!')
end