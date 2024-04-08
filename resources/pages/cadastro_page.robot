*** Settings ***
Resource    ../main.robot

*** Variables ***
${cadastreseLink}             //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}                  //input[contains(@name,'nome')]
${emailInput}                 //input[contains(@name,'email')]
${senhaInput}                 //input[contains(@name,'password')]
${administradorCheckbox}      //input[contains(@name,'administrador')]
${cadastrarButton}            //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]
${alertaSucesso}              //a[@class="alert-link"]
${alertaErro}                 //div[@role="alert"]
${loginURL}                   https://front.serverest.dev/login
${cadastroURL}                https://front.serverest.dev/cadastrarusuarios

*** Keywords ***
Dado que o usuário está na tela de login do ServeRest
    Acessar site
    Validar URL    ${loginURL}

Quando clicar em cadastre-se
    Clicar    ${cadastreseLink}
    Validar URL    ${cadastroURL}
E digitar um nome
    ${NOME}    FakerLibrary.name
    Preencher    ${nomeInput}     ${NOME}

E digitar um e-mail 
    ${USERNAME}                     FakerLibrary.username
    ${EMAIL}                        Set Variable                 ${USERNAME}@teste.com
    Preencher    ${emailInput}      ${EMAIL}

E digitar uma senha
    Preencher    ${senhaInput}     ${PASSWORD}

E não digitar um nome
    Limpar campo    ${nomeInput}

E clicar em perfil de usuário administrador
    Clicar   ${administradorCheckbox} 
    
E clicar em cadastrar
    Clicar    ${cadastrarButton} 

Então o sistema exibe a mensagem de sucesso "${msgEsperada}"
    Validar mensagem     ${alertaSucesso}    ${msgEsperada}