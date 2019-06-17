# language: pt

Funcionalidade: Busca por especialidade do profissional

Como usuário-contratante  do Iggle
Para facilitar a busca de serviços que se adequem às minhas necessidades
Eu quero pesquisar de acordo com parâmetros de nome do profissional, especialidade do profissional, nome do serviço ou sua localidade.

	Contexto: Dado que eu tenha um profissional nutricionista cadastrado
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


	Cenario: Busca por especialidade
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
		E eu clico no filtro Especialidade
		E eu vejo uma caixa de seleção
		Quando eu selecionar uma especialidade
		E clicar em "Buscar"
		Então eu devo ver o nome dos profissionais que possuem essa especialidade
		E um link para visitar o seu perfil
