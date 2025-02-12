*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - Clique simples
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Clique em Botões
    Acessar submenu    Clique simples

    # Test
    Click Text    text=CLIQUE SIMPLES
    Wait Until Page Contains    Isso é um clique simples

Teste - Clique looongo
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Clique em Botões
    Acessar submenu    Clique longo
    
    # Test
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="com.qaxperience.yodapp:id/long_click"]   10
    ${location}     Get Element Location     xpath=//android.widget.Button[@resource-id="com.qaxperience.yodapp:id/long_click"]

    Tap With Positions    1000      ${${location}[x], ${location}[y]}       
    Wait Until Page Contains    Isso é um clique longo

