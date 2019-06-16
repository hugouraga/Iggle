Dado("que estou logado em meu perfil") do
end

Dado("clico na aba sidebar") do
    find('[id=openbtn]').click
end

Dado("clico na sessão {string}") do |string|
    find('[id=Conta]').click
    save_and_open_page
end

Então("eu deveria está na página de alteração de conta do profissional") do
    visit edit_professional_user_path
end

Quando("alterar os dados necessários do formulário profissional") do
    fill_in("profissional_name", with: 'teste')
    fill_in("profissional_email", with: 'teste.nutri@gmail.com')
    fill_in("profissional_phone", with: 988888888)
    fill_in("profissional_document", with: 847984749874894)
    fill_in("profissional_instagram", with: "teste.nutri")
    fill_in("profissional_facebook", with: "teste.nutri")
    fill_in("profissional_description", with: "Nutrição Funcional - Saúde & Bem estar")
    fill_in("profissional_password", with: '123456789')
    fill_in("profissional_passwordc", with: '123456789')
end

Quando("clicar no botão {string}") do |string|
    find('[name=Salvar]').click
    save_and_open_page
end

Então("meus dados são atualizados") do
    expect(page).to have_content('Dados atualizados com sucesso!')
end

Quando("eu não alterar os dados necessários do formulário profissional") do
    fill_in("profissional_name", with: '')
    fill_in("profissional_email", with: '')
    fill_in("profissional_phone", with: '')
    fill_in("profissional_document", with: '')
    fill_in("profissional_instagram", with: "")
    fill_in("profissional_facebook", with: "")
    fill_in("profissional_description", with: "")
    fill_in("profissional_password", with: '')
    fill_in("profissional_passwordc", with: '')
end

Então("meus dados não são atualizados") do
    expect(page).to have_content('Ops! Encontramos alguns erros')
end