Quando("eu clicar em suporte") do
  find('[name=Suporte]').click
end

Então("tenho que ver um modal com um formulário") do
  expect(page).to have_content('modal-dialog')
end

Quando("eu preencher com  meu nome, email e mensagem") do
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
