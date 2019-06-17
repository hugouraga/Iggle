Então("eu tenho que visualizar  minha “foto de perfil” na página de perfil do profissional") do
  find('[id=picture]')
end

Então("o ícone do “Facebook”") do
  find('[id=facebook]')
end

Então("o ícone do “Instagram”") do
  find('[id=instagram]')
end

Então("o ícone de “Mensagens”") do
  find('[id=chat]')
end

Quando("eu pressionar o botão “Avaliações” na página de perfil do profissional, devo ter acesso às avaliações recebidas") do
  find('[id=avaliacao]')
end

Quando("eu pressionar o card de “Serviços” na página de perfil do profissional, devo ter a possibilidade de adicionar, remover e editar os serviços oferecidos por mim") do
  find('[id=serviços]')
end

Quando("eu pressionar o card de “Atendimentos Marcados” na página de perfil do profissional, devo ter a possibilidade de confirmar ou cancelar um atendimento, como também de pesquisar por eles") do
  find('[id=atendimento_marcado]')
end

Quando("eu pressionar o card de “Histórico de consultas” na página de perfil do profissional, devo ter a possibilidade de acessar os históricos de consultas e ver as avaliações delas") do
  find('[id=historico_consulta]')
end

Então("eu devo clicar no link para visitar o seu perfil") do
  find('[id=Visitar]').click
end

Então("ver o telefone") do
  expect(page).to have_content('Telefone')
end

Então("ver o email") do
  expect(page).to have_content('E-mail')
end

Então("ver a formação") do
  expect(page).to have_content('Formação')
end

Então("ver o crn") do
  expect(page).to have_content('CRN')
end

Então("o envelope de mensagem") do
  find('[id=chat]')
end

Então("a avaliação") do
  find('[id=avaliacao]')
end

Então("o card de Serviço") do
  expect(page).to have_content('SERVIÇOS')
end
