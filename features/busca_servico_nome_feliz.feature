# language: pt

Funcionalidade: Busca de serviços por nome

Como usuário-contratante  do Iggle
Para facilitar a busca de serviços que se adequem às minhas necessidades
Eu quero pesquisar de acordo com parâmetros de nome do profissional, especialidade do profissional, nome do serviço ou sua localidade.

	Contexto: Dado que eu tenha um serviço cadastrado
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
		E clico na seção "Endereços"
		Então eu deveria está na página de endereços do profissional
		Quando eu clicar no ícone de adição
		E for direcionado para o formulário de adicão de endereço
		Quando preencher meus dados
		E clicar no botão "Salvar"
		Então meu novo endereço aparece na página de endereços do profissional
		Dado que eu volto para a página inicial
		Dado que eu clico no card de serviço
		Então eu deveria estar na tela de adicionar serviços
		Quando eu clicar no botão de adicionar serviços
		E preencher as informações necessárias no form do serviço
		E eu clicar no botão 'Salvar'
		Então as alterações são salvas

	Cenario: Busca por serviço
		Dado que eu visito a página inicial
		E eu clico no botão Cadastro
		Então eu vou para a página de seleção de cadastro
		Quando eu clicar no botão Cliente
		E for para a página cadastro_cliente
		Quando eu preencher o novo formulário de usuário com nome e email e telefone e senha
		E clicar no botão 'Salvar'
		Então a mensagem "Usuário cadastrado com sucesso" será exibida na página inicial
		Dado que eu estou na tela inicial do Iggle
		E pressiono o botão "Login"
		Então eu deveria estar na página de seleção do login
		Quando eu clicar no botão cliente
		E preencher os dados de autenticação do usuário-contratante corretamente
		E pressionar o botão "Entrar"
		Então eu deveria estar na página inicial do usuário-contratante
		E eu clico no filtro Serviço
		E eu vejo uma caixa de busca
		Quando eu digitar o nome de um serviço cadastrado
		E clicar em "Buscar"
		Então eu devo ver as informações dos serviços que possuem esse nome
