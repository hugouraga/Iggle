Given("click on the Profissional button") do
  find('[name=Profissional]').click
end

When("I fill the new profissional form with the correct informations") do
  fill_in("profissional_name", with: 'Lindinha')
  fill_in("profissional_email", with: 'lindinha.nutri@gmail.com')
  fill_in("profissional_phone", with: 988888888)
  fill_in("profissional_profession", with: "Nutricionista")
  fill_in("profissional_document", with: 847984749874894)
  fill_in("profissional_instagram", with: "lindinha.nutri")
  fill_in("profissional_facebook", with: "lindinha.nutri")
  fill_in("profissional_description", with: "Nutrição Funcional - Saúde & Bem estar")
  fill_in("profissional_password", with: 'a1z21444#A')
  fill_in("profissional_passwordc", with: 'a1z21444#A')
end
