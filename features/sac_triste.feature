# language: pt
Funcionalidade: SAC

Como usuário-contratante/profissional do iggle
Para que eu possa fazer sugestões e reclamações
Quero poder enviar mesangens para a equipe do Iggle através de um SAC

Contexto: Dado que eu esteja logado na plataforma
  Dado que eu visito a página inicial
  E eu clico no botão Cadastro
  Então eu vou para a página de seleção de cadastro
  Quando eu clicar no botão Cliente
  E for para a página cadastro_cliente
  Quando eu preencher o novo formulário de usuário com nome e email e telefone e senha
  E clicar no botão 'Salvar'
  Então a mensagem "Usuário cadastrado com sucesso" será exibida na página inicial
  Dado que eu visito a página inicial
  E eu clico no botão Cadastro
  Então eu vou para a página de seleção de cadastro
  Quando eu clicar no botão Profissional
  Quando eu preencher o novo formulário com as informações necessárias
  E clicar no botão 'Salvar'
  Então a mensagem "Usuário cadastrado com sucesso" será exibida na página inicial
  Dado que eu estou na tela inicial do Iggle
  E pressiono o botão "Login"
  Então eu deveria estar na página de seleção do login
  Quando eu clicar no botão cliente
  E preencher os dados de autenticação do usuário-contratante corretamente
  E pressionar o botão "  Entrar"
  Então eu deveria estar na página inicial do usuário-contratante


Cenário: Não preencheu os campos corretamente
  Quando eu  não preencher com meu nome, email e mensagem
  E clicar em enviar
  Então tenho que receber uma mensagem para preencher os campos corretamente
