Então("eu deveria está na página de alteração de conta do profissional") do
  expect(page).to have_content('Alterar conta')
end

Quando("alterar os dados necessários do formulário profissional") do
    fill_in("profissional_name", with: 'teste')
    fill_in("profissional_email", with: 'teste.nutri@gmail.com')
    fill_in("profissional_phone", with: 9888888888)
    fill_in("profissional_document", with: 847984749874894)
    fill_in("profissional_instagram", with: "teste.nutri")
    fill_in("profissional_facebook", with: "teste.nutri")
    fill_in("profissional_description", with: "Nutrição Funcional - Saúde & Bem estar")
    fill_in("profissional_password", with: '123456789')
    fill_in("profissional_passwordc", with: '123456789')
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

Então("os dados da conta do profissional não são atualizados") do
  expect(page).to have_content('Ops! Encontramos 8 erros')
end

Então("meus dados são atualizados com sucesso") do
  expect(page).to have_content('Informações alteradas com sucesso!')
end
