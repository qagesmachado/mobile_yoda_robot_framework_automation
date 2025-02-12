*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - Login com sucesso
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Formulários
    Acessar submenu    Login
    
    # checkbox
    Fazer Login    yoda@qax.com    jedi    sucesso

Teste - Login com falha
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Formulários
    Acessar submenu    Login
    
    # checkbox
    Fazer Login    yoda@qax.com    test    falha

