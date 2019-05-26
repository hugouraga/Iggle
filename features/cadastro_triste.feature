# language: pt

Funcionalidade: Cadastro

Como usuário-contratante do Iggle
Para poder usufruir das funcionalidades da plataforma
Quero poder realizar meu cadastro no app com os seguintes dados: Nome, Email,Telefone e Senha.

Como futuro profissional do Iggle
Para poder usufruir das funcionalidades da plataforma
Quero poder me cadastrar com os seguintes dados: Nome email, telefone , profissão (Nutricionista
Nutrólogo / Professor de Esportes / Profissional de Ed. Física), nº do Documento (CRM / CRN / CONFEF) ,descrição ,facebook, instagram e senha.

  Cenario: Cadastro do profissional sem as informações necessárias
    Dado que eu visito a página inicial
    E eu clico no botão Cadastro
    Então eu vou para a página de seleção de cadastro
    Quando eu clicar no botão Profissional
    E for para a página cadastro_profissional
    Quando eu não preencher o formulário com as informações necessárias
    E clicar no botão 'Salvar'
    Então a mensagem "Ops Encontramos 8 erros" será exibida na página de cadastro do profissional

  Cenario: Cadastro do cliente sem as informações necessárias
    Dado que eu visito a página inicial
    E eu clico no botão Cadastro
    Então eu vou para a página de seleção de cadastro
    Quando eu clicar no botão Cliente
    E for para a página cadastro_cliente
    Quando eu não preencher o novo formulário de usuário com nome e email e telefone e senha
    E clicar no botão 'Salvar'
    Então a mensagem "Ops! Encontramos 6 erros" será exibida
