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

Quando("eu clicar em Adicionar Horário") do
	find('[id=adicionar-horario]').click
end

Quando("for direcionado para o formulário de adicão de horário") do
end

Quando("selecionar um dia") do
end

Quando("selecionar os turnos") do
	find('[id=manha]').click
	find('[id=tarde]').click
	save_and_open_page
end

Então("recebo uma mensagem de horário adicionado") do
	expect(page).to have_content('Horário adicionado com sucesso!')
end

Quando("eu clicar em Alterar") do
	visit meus_enderecos_path
	find('[id=alterar-horario]').click
end

Quando("for direcionado para o formulário de alteração de horário") do
end

Quando("alterar os dados necessários") do
	find('[id=tarde]').click
	save_and_open_page
end

Então("recebo uma mensagem de horário atualizado") do
	expect(page).to have_content('Horário atualizado com sucesso!')
end
