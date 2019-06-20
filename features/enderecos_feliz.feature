# language: pt

Funcionalidade: Endereços

Como profissional do iggle
Para que meus futuros clientes possam visualizar meus endereços de atendimento
Quero poder adicionar e alterar dados de endereços com os campos (Nome da rua, número, complemento, CEP, bairro, cidade e estado


  Cenario: Adicionar novo endereço
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
    Dado que eu estou no meu perfil
    E clico na sidebar
    E clico na seção Endereços
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando preencher meus dados
    E clicar no botão "Salvar"
    Então meu novo endereço aparece na página de endereços do profissional

  Cenario: Alterar dados de um endereço
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
    Dado que eu estou no meu perfil
    E clico na sidebar
    E clico na seção Endereços
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando preencher meus dados
    E clicar no botão "Salvar"
    Então meu novo endereço aparece na página de endereços do profissional
    Quando eu clicar no ícone de alteração
    E for direcionado para o formulário de alteração de dados do endereço
    Quando alterar os dados necessários do endereço
    E clicar no botão "Salvar"
    Então meu endereço aparece na página de endereços do profissional com os dados atualizados

  Cenario: Adicionando horário de atendimento em um endereço
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
    Dado que eu estou no meu perfil
    E clico na sidebar
    E clico na seção Endereços
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando preencher meus dados
    E clicar no botão "Salvar"
    Então meu novo endereço aparece na página de endereços do profissional
    Dado que eu estou na página de Meus Endereços
    E escolho um endereço para adicionar um horario
    E seleciono um dia da semana e período do dia
    E clico no botão de adicionar
    Então esse novo horário aparecerá nos meus horários de atendimento
