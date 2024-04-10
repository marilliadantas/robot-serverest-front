*** Settings ***
Resource     ../resources/main.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Login com sucesso
    [Tags]    LoginSucesso
    Dado que o usuário está na tela de login do Saucedemo
    Quando digitar username  ${USERNAME}
    E digitar senha  ${PASSWORD}
    E clicar em entrar
    Então o sistema exibe a tela de "Products"

CT02 - Login com email inválido
    [Tags]    LoginEmailInvalido
    Dado que o usuário está na tela de login do Saucedemo
    Quando digitar username  usernameinvalido
    E digitar senha   ${PASSWORD}
    E clicar em entrar
    Então o sistema exibe a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

CT03 - Login com senha inválida
    [Tags]    LoginSenhaInvalida
    Dado que o usuário está na tela de login do Saucedemo
    Quando digitar username  ${USERNAME}
    E digitar senha  senhainvalida
    E clicar em entrar
    Então o sistema exibe a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

CT04 - Login com email em branco
    [Tags]    LoginEmailVazio
    Dado que o usuário está na tela de login do Saucedemo
    Quando não digitar username
    E digitar senha  ${PASSWORD}
    E clicar em entrar
    Então o sistema exibe a mensagem de erro "Epic sadface: Username is required"

CT04 - Login com senha em branco
    [Tags]    LoginSenhaVazio
    Dado que o usuário está na tela de login do Saucedemo
    Quando digitar username  ${USERNAME}
    E não digitar senha
    E clicar em entrar
    Então o sistema exibe a mensagem de erro "Epic sadface: Password is required"

CT06 - Login com email e senha em branco
    [Tags]    LoginEmailSenhaVazio
    Dado que o usuário está na tela de login do Saucedemo
    Quando não digitar username
    E não digitar senha
    E clicar em entrar
    Então o sistema exibe a mensagem de erro "Epic sadface: Username is required"