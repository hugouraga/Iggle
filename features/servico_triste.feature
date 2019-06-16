# language: pt
Funcionalidade: Serviço

Como profissional do Iggle,
quero poder adicionar novos serviços disponíveis com uma descrição, valor, duração e locais/ endereços,
para que eu possa administrar os serviços que quero oferecer na plataforma.

  Cenario: Adicionar serviço sem os dados necessários
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
    Dado que eu clico no card de serviço
    Então eu deveria estar na tela de adicionar serviços
    Quando eu clicar no botão de adicionar serviços
    E não preencher as informações necessárias no form do serviço
    E eu clicar no botão 'Salvar'
    
