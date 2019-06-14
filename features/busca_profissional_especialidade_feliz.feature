# language: pt

Funcionalidade: Busca por especialidade do profissional

Como usuário-contratante  do Iggle
Para facilitar a busca de serviços que se adequem às minhas necessidades
Eu quero pesquisar de acordo com parâmetros de nome do profissional, especialidade do profissional, nome do serviço ou sua localidade.

	Contexto: Dado que eu estou logado como cliente
		Dado que eu estou na minha página inicial
		E eu clico em "Especialidade"
		E eu vejo uma caixa de seleção
		Quando eu selecionar uma especialidade
		E clicar em "Buscar"
		Então eu devo ver o nome dos profissionais que possuem essa especialidade
		E um link para visitar o seu perfil