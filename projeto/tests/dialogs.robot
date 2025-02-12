*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Validar Dialog
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Dialogs
    Acessar submenu    Info
    
    Sleep    5

    Wait Until Element Is Visible    xpath=//*[@text="Mestre Yoda"]
    Text Should Be Visible    Mestre Yoda
    Text Should Be Visible    Que a Força esteja com você.

    Click Element    id=com.qaxperience.yodapp:id/dialogInfoOk
    Wait Until Page Does Not Contain    xpath=//*[@text="Mestre Yoda"]




