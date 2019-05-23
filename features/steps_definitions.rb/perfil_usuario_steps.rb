Quando("eu acessar o meu perfil") do
end

Então("eu tenho que ver uma caixa de busca para que eu possa fazer uma busca para contratar serviços") do
  find('[id=buscar]')
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
