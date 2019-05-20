# language: pt

Funcionalidade: Endereços

Como profissional do iggle
Para que meus futuros clientes possam visualizar meus endereços de atendimento
Quero poder adicionar e alterar dados de endereços com os campos (Nome da rua, número, complemento, CEP, bairro, cidade e estado

Contexto: Dado que o profissional esteja logado

  Cenario: Adicionar novo endereço
    Dado que eu estou no meu perfil
    E clico na barra lateral
    E clico na sessão "Endereços"
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando preencher meus dados
    E clicar no botão "Salvar"
    Então meu novo endereço aparece na página de endereços do profissional

  Cenario: Alterar dados de um endereço
    Dado que eu estou no meu perfil
    E clico na barra lateral
    E clico na sessão "Endereços"
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de alteração
    E for direcionado para o formulário de alteração de dados do endereço
    Quando alterar os dados necessários
    E clicar no botão "Salvar"
    Então meu endereço aparece na página de endereços do profissional com os dados atualizados
