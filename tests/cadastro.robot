*** Settings ***
Resource     ../resources/main.robot
Resource    ../resources/pages/cadastro_page.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Cadastrar usuário com sucesso
    Dado que o usuário está na tela de login do ServeRest
    Quando clicar em cadastre-se
    E digitar um nome
    E digitar um e-mail
    E digitar uma senha
    E clicar em perfil de usuário administrador
    E clicar em cadastrar
    Então o sistema exibe a mensagem de sucesso "Cadastro realizado com sucesso"