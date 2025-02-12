*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - checkbox
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Check e Radio
    Acessar submenu    Checkbox
    
    # checkbox
    Selecionar checkbox     Ruby
    Selecionar checkbox     Python
    Selecionar checkbox     Java
    Selecionar checkbox     Javascript
    Selecionar checkbox     C#
    Selecionar checkbox     Robot Framework

Teste - botões Botões de radio
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Check e Radio
    Acessar submenu    Botões de radio
    
    # Botões de radio
    ${before}    Get Element Attribute    xpath=//android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and contains(@text, "Javascript")]    attribute=checked
    Should Be Equal    ${before}     false
    Click Element    xpath=//android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and contains(@text, "Javascript")] 
    Sleep    1s
    ${after}    Get Element Attribute    xpath=//android.widget.RadioButton[@resource-id="com.qaxperience.yodapp:id/radioButton" and contains(@text, "Javascript")]     attribute=checked
    Should Be Equal    ${after}     true

