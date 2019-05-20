# language: pt
Funcionalidade: Login

Como usuário-contratante do Iggle,
Quero Fazer login no app com meu email e senha,
Para aproveitar as funcionalidades oferecidas pela plataforma.

Como usuário-profissional do Iggle,
Quero Fazer login no app com nome, email, telefone, profissão (Nutricionista / Nutrólogo / Professor de Esportes / Profissional de Ed. Física)
, Nº do Documento (CRM / CRN / CONFEF), descrição ,facebook, instagram e senha
Para aproveitar as funcionalidades oferecidas pela plataforma.

    Cenario: Login usuário-contratante sem os dados
      Dado que eu estou na tela inicial do Iggle
      E pressiono o botão "Login"
      Então eu deveria estar na página de seleção do login
      Quando eu clicar no botão cliente
      E não preencher os dados de autenticação do usuário-contratante
      E pressionar o botão "Entrar"
      Então é para exibir algo que eu não sei

    Cenario: Login usuário-profissional sem os dados
      Dado que eu estou na tela inicial do Iggle
      E pressiono o botão "Login"
      Então eu deveria estar na página de seleção do login
      Quando eu clicar no botão profissional
      E não preencher os dados de autenticação do profissional
      E pressionar o botão "Entrar"
      Então é para exibir algo que eu não sei
