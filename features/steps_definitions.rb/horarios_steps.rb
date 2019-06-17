Dado("que eu estou na página de Meus Endereços") do
  expect(page).to have_content('Meus Endereços')
end

Dado("escolho um endereço para adicionar um horario") do
  find('[id=adicionar-horario]').click
end

Dado("seleciono um dia da semana e período do dia") do
end

Dado("clico no botão de adicionar") do
  find('[name=Salvar]').click
end

Então("esse novo horário aparecerá nos meus horários de atendimento") do
  expect(page).to have_content('Segunda-feira')
end
