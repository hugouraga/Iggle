Feature: Cadastro cliente
In order to enjoy the functionality of the platform
As an Iggle user-contractor
I want to be able to register in the app with the following data: Name, Email, Phone and Password.

In order to enjoy the functionality of the platform
As the future professional of Iggle
I want to be able to register with the following data: Name email, telephone, profession (Nutritionist / Nutrologist /
Sports Teacher / Physical Ed. Professional), Document number (CRM / CRN / CONFEF), description, facebook, instagram and password.

  Scenario: Cadastro cliente
    Given I visit the index page
    And click on the Cliente button
    And go to the cadastro_cliente page
    When I fill the new user form with name and email and phone and password
    And click on the 'Salvar' button
    Then the message "Usuário cadastrado com sucesso." will be displayed in the index page

  Scenario: Cadastro profissional
    Given I visit the index page
    And click on the Profissional button
    And go to the cadastro_profissional page
    When I fill the new profissional form with the correct informations
    And click on the 'Cadastrar' button
    Then the message "Usuário cadastrado com sucesso." will be displayed in the index page
