# language: pt

Funcionalidade: Endereços

Como profissional do iggle
Para que meus futuros clientes possam visualizar meus endereços de atendimento
Quero poder adicionar e alterar dados de endereços com os campos (Nome da rua, número, complemento, CEP, bairro, cidade e estado

Contexto: Dado que eu esteja logado na plataforma

  Cenario: Adicionar novo endereço sem os campos preenchidos
    Dado que eu estou no meu perfil
    E clico na sidebar
    E clico na sessão "Endereços"
    Então eu deveria está na página de endereços do profissional
    Quando eu clicar no ícone de adição
    E for direcionado para o formulário de adicão de endereço
    Quando eu não preencher meus dados
    E clicar no botão "Salvar"
    Então uma mensagem de erro é visualizada
