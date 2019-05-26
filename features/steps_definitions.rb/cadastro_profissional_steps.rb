Dado("eu clicar no botão Profissional") do
  find('[name=Profissional]').click
end

Quando("eu preencher o novo formulário com as informações necessárias") do
  fill_in("profissional_name", with: 'Lindinha')
  fill_in("profissional_email", with: 'lindinha.nutri@gmail.com')
  fill_in("profissional_phone", with: 988888888)
  fill_in("profissional_document", with: 847984749874894)
  fill_in("profissional_instagram", with: "lindinha.nutri")
  fill_in("profissional_facebook", with: "lindinha.nutri")
  fill_in("profissional_description", with: "Nutrição Funcional - Saúde & Bem estar")
  fill_in("profissional_password", with: 'a1z21444#A')
  fill_in("profissional_passwordc", with: 'a1z21444#A')
end

Quando("for para a página cadastro_profissional") do
end

Quando("eu não preencher o formulário com as informações necessárias") do
  fill_in("profissional_name", with: '')
  fill_in("profissional_email", with: '')
  fill_in("profissional_phone", with: '')
  fill_in("profissional_document", with: '')
  fill_in("profissional_instagram", with: '')
  fill_in("profissional_facebook", with: '')
  fill_in("profissional_description", with: '')
  fill_in("profissional_password", with: '')
  fill_in("profissional_passwordc", with: '')
end


Então("a mensagem {string} será exibida na página de cadastro do profissional") do |string|
  expect(page).to have_content('Ops! Encontramos 8 erros')
end
