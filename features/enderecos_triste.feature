# language: pt

Funcionalidade: Endereços

Como profissional do iggle
Para que meus futuros clientes possam visualizar meus endereços de atendimento
Quero poder adicionar e alterar dados de endereços com os campos (Nome da rua, número, complemento, CEP, bairro, cidade e estado

Contexto: Dado que eu esteja logado na plataforma
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
  Quando eu clicar no botão profissional
  E preencher os dados de autenticação do profissional corretamente
  E pressionar o botão "Entrar"
  Então eu deveria estar na página inicial do profissional

  Cenario: Adicionar novo endereço sem os campos preenchidos
    Dado que eu estou no meu perfil
    E clico na sidebar
    E clico na seção Endereços
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando eu não preencher meus dados
    E clicar no botão "Salvar"
    Então uma mensagem de erro é visualizada
