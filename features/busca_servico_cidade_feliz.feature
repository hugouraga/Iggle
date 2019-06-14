# language: pt

Funcionalidade: Busca de serviços por cidade

Como usuário-contratante  do Iggle
Para facilitar a busca de serviços que se adequem às minhas necessidades
Eu quero pesquisar de acordo com parâmetros de nome do profissional, especialidade do profissional, nome do serviço ou sua localidade.

	Contexto: Dado que eu estou logado como cliente
		Dado que eu estou na minha página inicial
		E eu clico em "Localidade"
		E eu vejo uma caixa de busca
		Quando eu digitar o nome de uma cidade
		E clicar em "Buscar"
		Então eu devo ver as informações dos serviços que possuem essa cidade em seu endereço