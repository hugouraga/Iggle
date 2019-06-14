# language: pt

Funcionalidade: Busca por nome do Profissional

Como usuário-contratante  do Iggle
Para facilitar a busca de serviços que se adequem às minhas necessidades
Eu quero pesquisar de acordo com parâmetros de nome do profissional, especialidade do profissional, nome do serviço ou sua localidade.

	Contexto: Dado que eu estou logado como cliente
		Dado que eu estou na minha página inicial
		E eu clico em "Profissional"
		E eu vejo uma caixa de busca
		Quando eu digitar o nome de um profissional cadastrado
		E clicar em "Buscar"
		Então eu devo ver um link para visitar o seu perfil