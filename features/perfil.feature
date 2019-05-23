# language: pt
Funcionalidade: Perfil

Como profissional cadastrado no Iggle,
Quero pode ter um perfil em que possa adicionar minha foto, redes sociais, uma breve descrição sobre mim, atendimentos marcados, histórico de consultas, serviços,
receber avaliações, notificações e mensagens dos clientes,
Para que meus futuros clientes tenham informações sobre mim.

Como usuário-contratante do Iggle,
Quero poder ter um perfil onde possa adicionar uma foto minha e ter os acessos a seguintes funcionalidades: Caixa de busca, caixa de mensagens, feedbacks, atendimentos
marcados e histórico de consulta.
Para que eu possa visualizar as funcionalidades disponíveis para mim.

Contexto: Dado que eu esteja logado na plataforma

  Cenario: Acesso ao perfil do cliente
    Quando eu acessar o meu perfil
    Então eu tenho que ver uma caixa de busca para que eu possa fazer uma busca para contratar serviços
    E um ícone com uma caixa de mensagem para que eu possa acessá-la
    E a média das minhas avaliações feitas por profissionais que já me atenderam
    E uma opção para visualizar os meus atendimentos marcados
    E uma opção para visualizar os meus atendimentos já realizados.


  Cenario: Acesso ao perfil do profissional
    Quando eu acessar o meu perfil
    Então eu tenho que visualizar  minha “foto de perfil” na página de perfil do profissional
    E o ícone do “Facebook”
    E o ícone do “Instagram”
    E o ícone de “Mensagens”
    E o ícone de “Notificações”
    Quando eu pressionar o botão “Avaliações” na página de perfil do profissional, devo ter acesso às avaliações recebidas
    Quando eu pressionar a caixa de texto na página de perfil do profissional, devo ter a possibilidade de escrever uma breve descrição sobre mim
    Quando eu pressionar o card de “Serviços” na página de perfil do profissional, devo ter a possibilidade de adicionar, remover e editar os serviços oferecidos por mim
    Quando eu pressionar o card de “Atendimentos Marcados” na página de perfil do profissional, devo ter a possibilidade de confirmar ou cancelar um atendimento, como também de pesquisar por eles
    Quando eu pressionar o card de “Histórico de consultas” na página de perfil do profissional, devo ter a possibilidade de acessar os históricos de consultas e ver as avaliações delas
