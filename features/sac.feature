# language: pt
Funcionalidade: SAC

Como usuário-contratante/profissional do iggle
Para que eu possa fazer sugestões e reclamações
Quero poder enviar mesangens para a equipe do Iggle através de um SAC

  Cenario: Acesso ao SAC
    Quando eu clicar em suporte
    Então tenho que ver um modal com um formulário

  Cenário: Envio da mensagem
    Quando eu preencher com meu nome, email e mensagem
    E clicar em enviar
    Então tenho que receber um mensagem de retorno do envio da mensagem
