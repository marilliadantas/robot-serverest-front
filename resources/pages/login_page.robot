*** Settings ***
Resource    ../main.robot

*** Variables ***

${usernameInput}              id=user-name
${senhaInput}                 id=password
${entrarButton}               id=login-button
${tituloProdutos}             //div[@class="product_label"]
${msgErro}                    //h3[@data-test="error"]

*** Keywords ***
Dado que o usuário está na tela de login do Saucedemo
    Acessar site

Quando digitar username
    [Arguments]       ${username}
    Preencher         ${usernameInput}     ${username}

E digitar senha
    [Arguments]      ${senha}
    Preencher        ${senhaInput}         ${senha}

Quando não digitar username
    Limpar campo    ${usernameInput}

E não digitar senha
    Limpar campo    ${senhaInput} 

E clicar em entrar
    Clicar    ${entrarButton}

Então o sistema exibe a tela de "${produtos}"
    Validar mensagem    ${tituloProdutos}    ${produtos}

Então o sistema exibe a mensagem de erro "${msgEsperada}"
    Validar mensagem    ${msgErro}     ${msgEsperada}

Então o sistema exibe as mensagens
    [Arguments]          ${msgErro}    ${msgErro2}
    Validar mensagens    ${msgErro}    ${msgErro2}