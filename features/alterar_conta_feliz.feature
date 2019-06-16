# language: pt

Funcionalidade: Alterar

Como usuário-contratante do Iggle
Para poder deixar meus dados atualizados
Quero poder alterar dados de cadastro com os campos: Nome, Email,Telefone e Senha.
 
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
  E pressionar o botão "Entrar"
  Então eu deveria estar na página inicial do usuário-contratante
  Dado que eu estou na tela inicial do Iggle
  E pressiono o botão "Login"
  Então eu deveria estar na página de seleção do login
  Quando eu clicar no botão profissional
  E preencher os dados de autenticação do profissional corretamente
  E pressionar o botão "Entrar"
  Então eu deveria estar na página inicial do profissional
  
  Cenario: Alterar conta cliente
    Dado que estou logado em meu perfil
    E clico na aba sidebar
    E clico na sessão "Conta"
    Então eu deveria está na página de alteração de conta do cliente
    Quando alterar os dados necessários do formulário cliente
    E clicar no botão "Salvar"
    Então meus dados são atualizados com sucesso 

  Cenario: Alterar conta profissional
    Dado que estou logado em meu perfil
    E clico na aba sidebar
    E clico na sessão "Conta"
    Então eu deveria está na página de alteração de conta do profissional
    Quando alterar os dados necessários do formulário profissional
    E clicar no botão "Salvar"
    Então meus dados são atualizados com sucesso