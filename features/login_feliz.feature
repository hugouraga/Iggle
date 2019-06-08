# language: pt
Funcionalidade: Login

Como usuário-contratante do Iggle,
Quero Fazer login no app com meu email e senha,
Para aproveitar as funcionalidades oferecidas pela plataforma.

Como usuário-profissional do Iggle,
Quero Fazer login no app com nome, email, telefone, profissão (Nutricionista / Nutrólogo / Professor de Esportes / Profissional de Ed. Física)
, Nº do Documento (CRM / CRN / CONFEF), descrição ,facebook, instagram e senha
Para aproveitar as funcionalidades oferecidas pela plataforma.


Contexto: Dado que eu seja um usuário cadastrado
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


  Cenario: Login usuário-contratante
    Dado que eu estou na tela inicial do Iggle
    E pressiono o botão "Login"
    Então eu deveria estar na página de seleção do login
    Quando eu clicar no botão cliente
    E preencher os dados de autenticação do usuário-contratante corretamente
    E pressionar o botão "Entrar"
    Então eu deveria estar na página inicial do usuário-contratante

  Cenario: Login usuário-profissional
    Dado que eu estou na tela inicial do Iggle
    E pressiono o botão "Login"
    Então eu deveria estar na página de seleção do login
    Quando eu clicar no botão profissional
    E preencher os dados de autenticação do profissional corretamente
    E pressionar o botão "Entrar"
    Então eu deveria estar na página inicial do profissional
