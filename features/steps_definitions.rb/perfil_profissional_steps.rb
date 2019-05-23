Então("eu tenho que visualizar  minha “foto de perfil” na página de perfil do profissional") do
  find('[id=foto]')
end

Então("o ícone do “Facebook”") do
  find('[id=facebook]')
end

Então("o ícone do “Instagram”") do
  find('[id=instagram]')
end

Então("o ícone de “Mensagens”") do
  find('[id=mensagem]')
end

Então("o ícone de “Notificações”") do
  find('[id=notificação]')

end

Quando("eu pressionar o botão “Avaliações” na página de perfil do profissional, devo ter acesso às avaliações recebidas") do
  find('[id=avaliacao]')
end

Quando("eu pressionar a caixa de texto na página de perfil do profissional, devo ter a possibilidade de escrever uma breve descrição sobre mim") do
  find('[id=descrição]')
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
