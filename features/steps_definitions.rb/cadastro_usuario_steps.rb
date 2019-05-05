Given("I visit the index page") do
  visit root_url
end

Given("click on the Cliente button") do
  find('[name=Cliente]').click
end

When("I fill the new user form with name and email and phone and password") do
  fill_in("user_name", with: 'Florzinha')
  fill_in("user_email", with: 'florzinha.poderosa@gmail.com')
  fill_in("user_phone", with: 999999999)
  fill_in("user_password", with: 'zldmald1$L')
  fill_in("user_passwordc", with: 'zldmald1$L')
end


When("click on the {string} button") do |string|
  find('[name=Salvar]').click
end


Then("the message {string} will be displayed in the index page") do |string|
  expect(page).to have_content('Usuário cadastrado com sucesso')
end
