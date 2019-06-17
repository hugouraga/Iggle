Dado("que eu estou no meu perfil") do
end

Dado("clico na sidebar") do
  find('[id=openbtn]').click
end

Dado("clico na seção {string}") do |string|
  find('[id=Endereços]').click
  save_and_open_page
end

Então("eu deveria está na página de endereços do profissional") do
  visit meus_enderecos_path
end

Quando("eu clicar no ícone de adição") do
  find('[id=novo_endereço]').click
end

Quando("for direcionado para o formulário de adicão de endereço") do
end

Quando("preencher meus dados") do
    fill_in("name_address", with: 'Via Elevado Pres. João Goulart')
    fill_in("number_address", with: '19')
    fill_in("description_address", with: 'B')
    fill_in("postal_code_address", with: '5423020')
    fill_in("district_address", with: 'Vila Buarque')
    fill_in("city_address", with: 'São Paulo')
    save_and_open_page
end

Então("meu novo endereço aparece na página de endereços do profissional") do
  expect(page).to have_content('VIA ELEVADO PRES. JOÃO GOULART, 19')
end

Quando("eu clicar no ícone de alteração") do
  find('[id=alterar]').click
end

Quando("for direcionado para o formulário de alteração de dados do endereço") do
end

Quando("alterar os dados necessários do endereço") do
  fill_in("district_address", with: 'Vila Mariana')
  save_and_open_page
end

Então("meu endereço aparece na página de endereços do profissional com os dados atualizados") do
  expect(page).to have_content('Vila Mariana')
end

Quando("eu não preencher meus dados") do
  fill_in("name_address", with: '')
  fill_in("number_address", with: '')
  fill_in("description_address", with: '')
  fill_in("postal_code_address", with: '')
  fill_in("district_address", with: '')
  fill_in("city_address", with: '')
  save_and_open_page
end

Então("uma mensagem de erro é visualizada") do
  expect(page).to have_content('Ops! Encontramos 5 erros')
end
