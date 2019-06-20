Dado("eu clico no filtro Especialidade") do
  find('[id=busca-profissional-profissao]').click
end

Dado("eu vejo uma caixa de seleção") do
  find('[id=search]').click
end

Quando("eu selecionar uma especialidade") do
end

Quando("clicar em {string}") do |string|
  find('[name=commit]').click
end

Então("eu devo ver o nome dos profissionais que possuem essa especialidade") do
  expect(page).to have_content('Lindinha')
end

Então("um link para visitar o seu perfil") do
  expect(page).to have_content('Visitar')
end

Então("eu clico no filtro Profissional") do
  find('[id=busca-profissional]').click
end

Então("eu vejo uma caixa de busca") do
  find('[id=search]').click
end

Quando("eu digitar o nome de um profissional cadastrado") do
  fill_in("search", with: 'Lindinha')
end

Então("eu devo ver um link para visitar o seu perfil") do
  expect(page).to have_content('Visitar')
end

Então("eu clico no filtro Localidade") do
  find('[id=busca-servico-cidade]').click
end

Quando("eu digitar o nome de uma cidade") do
  fill_in("search", with: ' Vila Mariana')
end

Então("eu devo ver as informações dos serviços que possuem essa cidade em seu endereço") do
  expect(page).to have_content('')
end

Então("eu clico no filtro Serviço") do
  find('[id=busca-servico-nome]').click
end

Quando("eu digitar o nome de um serviço cadastrado") do
  fill_in("search", with: 'Massagem funcional')
end

Então("eu devo ver as informações dos serviços que possuem esse nome") do
  expect(page).to have_content('MASSAGEM FUNCIONAL')
end

Quando("não houver nenhum profissional cadastrado com essa especialidade") do
end

Então("eu devo ver uma mensagem informando que não existem profissionais cadastrados com essa especialidade") do
  expect(page).to have_content('Não existe nenhum profissional com esta especialidade cadastrado.')
end

Quando("eu digitar o nome de um profissional não cadastrado") do
  fill_in('search', with: 'Mario')
end

Então("eu devo ver uma mensagem informando que o profissional não foi encontrado") do
  expect(page).to have_content('Profissional não encontrado')
end

Quando("eu digitar o nome de uma cidade que não está cadastrada em nenhum serviço") do
  fill_in("search", with: 'Londres')
end

Então("eu devo ver uma mensagem informando que não existem serviços cadastrados para essa cidade") do
  expect(page).to have_content('Não serviços cadastrados com esta cidade!')
end

Quando("eu digitar o nome de um serviço que não está cadastrado") do
  fill_in('search', with: 'Natação')
end

Então("eu devo ver uma mensagem informando que não há serviços cadastrados com esse nome") do
  expect(page).to have_content('Serviço não encontrado!')
end

Então("eu posso sair da conta") do
  find('[id=Voltar]').click
  find('[id=openbtn]').click
  find('[id=Sair]').click
end
