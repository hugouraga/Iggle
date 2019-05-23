Quando("eu clicar na sidebar") do
  find('[id=openbtn]').click
end

Então("a sidebar aparece") do
end

Então("clicar em suporte") do
  find('[name=Suporte]').click
end

Então("tenho que ver um modal com um formulário") do
  find('[id=modal-mensagem]')
end

Quando("eu preencher com meu nome, email e mensagem") do
  fill_in("contact_name", with: 'Florzinha')
  fill_in("contact_email", with: 'florzinha.poderosa@gmail.com')
  fill_in("contact_message", with: "Problemas para marcar consulta")
end

Quando("clicar em enviar") do
  find('[name=Enviar]').click
end

Então("tenho que receber um mensagem de retorno do envio da mensagem") do
  expect(page).to have_content('Obrigada pela sua mensagem! Nós retornaremos em breve')
end

Quando("eu  não preencher com meu nome, email e mensagem") do
  fill_in("contact_name", with: '')
  fill_in("contact_email", with: '')
  fill_in("contact_message", with: "")
end

Então("tenho que receber uma mensagem para preencher os campos corretamente") do
  expect(page).to have_content('Preencha os campos corretamente')
end
