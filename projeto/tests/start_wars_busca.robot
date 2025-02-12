*** Settings ***
Library    AppiumLibrary
Resource    ../resources/base.resource
Test Setup        Iniciar sessão
Test Teardown     Encerrar sessão    

*** Variables ***

*** Test Cases ***
Teste - busca de elementos
    Entrar no App
    Navegador para menu lateral
    Acessar menu    Star Wars
    Acessar submenu    Busca
    
    Buscar pessoa    pessoa=Darth Vader
