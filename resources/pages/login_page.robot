*** Settings ***
Resource    ../main.robot

*** Variables ***
${emailInput}                 id=email
${senhaInput}                 id=password
${entrarButton}               //button[@data-testid='entrar'][contains(.,'Entrar')]
${tituloPagina}               //p[@class="lead"]
${homeURL}                    https://front.serverest.dev/admin/home

*** Keywords ***
Quando digitar email
    Preencher    ${emailInput}     ${EMAIL}

E digitar senha
    Preencher    ${senhaInput}     ${PASSWORD}

E clicar em entrar
    Clicar    ${entrarButton}

Então o sistema deve exibir a mensagem "${msgEsperada}"
    Validar mensagem    ${tituloPagina}   ${msgEsperada}