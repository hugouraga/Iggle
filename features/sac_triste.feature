# language: pt
Funcionalidade: SAC

Como usuário-contratante/profissional do iggle
Para que eu possa fazer sugestões e reclamações
Quero poder enviar mesangens para a equipe do Iggle através de um SAC

Contexto: Dado que eu esteja logado na plataforma

Cenario: Acesso ao SAC
  Quando eu clicar na sidebar
  Então a sidebar aparece
  E clicar em suporte
  Então tenho que ver um modal com um formulário

Cenário: Não preencheu os campos corretamente
  Quando eu  não preencher com meu nome, email e mensagem
  E clicar em enviar
  Então tenho que receber uma mensagem para preencher os campos corretamente