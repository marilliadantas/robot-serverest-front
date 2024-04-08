*** Settings ***
Resource     ../resources/main.robot
Test Teardown    Fechar navegador

*** Test Cases ***
CT01 - Login como administrador
    Dado que o usuário está na tela de login do ServeRest
    Quando digitar email
    E digitar senha
    E clicar em entrar
    Então o sistema deve exibir a mensagem "Este é seu sistema para administrar seu ecommerce."