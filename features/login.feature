# language: pt
Funcionalidade: Login

Como usuário-contratante do Iggle,
Para aproveitar as funcionalidades oferecidas pela plataforma,
Quero Fazer login no app com meu email e senha,

  Cenario: Login usuário-contratante
    Dado que eu estou na tela inicial do Iggle
    E pressiono o botão "entrar"
    Então eu deveria estar na página de login
    Quando eu clicar no botão "cliente"
    E preencher os dados requeridos corretamente
    E pressionar "login"
    Então eu deveria estar na página inicial do usuário-contratante
