# language: pt

Funcionalidade: Horários

Como profissional do iggle
Para que meus futuros clientes possam escolher meus serviços em um horário adequado para nós dois
Quero poder ser específico quanto ao dia da semana e turnos de disponibilidade em determinado endereço onde presto o serviço

Contexto: Dado que eu esteja logado na plataforma

	Cenário: Adição de um horário à um endereço
		Dado que eu estou no meu perfil
		E clico na sidebar
		E clico na sessão "Endereços"
		Então eu deveria estar na página de endereços do profissional
		Quando eu clicar em "Adicionar Horário"
		E for direcionado para o formulário de adição de horário
		Quando eu selecionar um dia
		E selecionar os turnos
		E clicar no botão "Adicionar"
		Então eu recebo uma mensagem de horário adicionado

	Cenário: Alterar dados de um horário
		Dado que eu estou no meu perfil
		E clico na sidebar
		E clico na sessão "Endereços"
		Então eu deveria estar na página de endereços do profissional
		Quando eu clicar em "Editar"
		E for direcionado para o formulário de alteração de dados do horário
		Quando alterar os dados necessários
		Então eu recebo uma mensagem de horário atualizado