Dado("que eu volto para a página inicial") do
  find('[id=voltar]').click
end

Dado("que eu clico no card de serviço") do
  find('[id=serviços]').click
end

Então("eu deveria estar na tela de adicionar serviços") do
  expect(page).to have_content('Meus Serviços')
end

Quando("eu clicar no botão de adicionar serviços") do
  find('[id=adicionar_serviços]').click
end


Quando("preencher as informações necessárias no form do serviço") do
  fill_in('nome_serviço', with: 'Massagem funcional')
  fill_in('descrição_serviço', with: 'TOP!')
  fill_in('preço_serviço', with: '30')
  fill_in('duração_serviço', with: '1')
end


Quando("eu clicar no botão {string}") do |string|
  find('[name=commit]').click
end

Então("as alterações são salvas") do
  expect(page).to have_content('Serviço adicionado com sucesso!')
end


Quando("não preencher as informações necessárias no form do serviço") do
  fill_in('nome_serviço', with: '')
  fill_in('descrição_serviço', with: '')
  fill_in('preço_serviço', with: '')
  fill_in('duração_serviço', with: '')
end

Então("receberei uma mensagem de erro") do
  expect(page).to have_content('Ops! Encontramos 6 erros')
end

Então("clicar no card de Serviço") do
  find('[id=serviços]').click
end
