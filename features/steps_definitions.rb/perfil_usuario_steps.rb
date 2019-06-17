Quando("eu acessar o meu perfil") do
end


Então("eu tenho que ver a minha foto") do
  find('[id=picture]')
end


Então("um card para filtrar por Profissional") do
  find('[id=busca-profissional]')
end

Então("um card para filtrar por Serviço") do
  find('[id=busca-servico-nome]')

end

Então("um card para filtrar por Localidade") do
  find('[id=busca-servico-cidade]')
end

Então("um card para filtrar por Especialidade") do
  find('[id=busca-profissional-profissao]')
end


Então("um ícone com uma caixa de mensagem para que eu possa acessá-la") do
  find('[id=mensagem]')
end

Então("a média das minhas avaliações feitas por profissionais que já me atenderam") do
  find('[id=avaliacao]')
end

Então("uma opção para visualizar os meus atendimentos marcados") do
  find('[id=atendimento_marcado]')
end

Então("uma opção para visualizar os meus atendimentos já realizados.") do
  find('[id=historico_atendimento]')
end
