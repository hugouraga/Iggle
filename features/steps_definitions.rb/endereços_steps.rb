Dado("que eu estou no meu perfil") do
end

Dado("clico na sidebar") do
  find('[id=openbtn]').click
end

Dado("clico na sessão {string}") do |string|
  find('[id=Endereços]').click
  save_and_open_page
end

Então("eu deveria está na página de endereços do profissional") do
end

Quando("eu clicar no ícone de adição") do
  find('[id=novo_endereço]').click
end

Quando("for direcionado para o formulário de adicão de endereço") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("preencher meus dados") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("meu novo endereço aparece na página de endereços do profissional") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("eu clicar no ícone de alteração") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("for direcionado para o formulário de alteração de dados do endereço") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("alterar os dados necessários") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("meu endereço aparece na página de endereços do profissional com os dados atualizados") do
  pending # Write code here that turns the phrase above into concrete actions
end
