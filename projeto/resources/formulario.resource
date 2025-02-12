*** Settings ***
Resource    base.resource

*** Variables ***

*** Keywords ***
Criar conta    
    [Arguments]    ${nome}    ${email}    ${senha}    ${nivel}
    
    Input Text    xpath=//*[@resource-id="com.qaxperience.yodapp:id/etUsername"]    text=${nome}
    Input Text    xpath=//*[@resource-id="com.qaxperience.yodapp:id/etEmail"]    text=${email}
    Input Text    xpath=//*[@resource-id="com.qaxperience.yodapp:id/etPassword"]    text=${senha}

    Click Element    id=com.qaxperience.yodapp:id/spinnerJob    
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    ${nivel}

    Click Element    xpath=//*[@resource-id="com.qaxperience.yodapp:id/btnSubmit"]
    
    Wait Until Page Contains    text=Tudo certo, boas vindas ao Yodapp!

Fazer Login    
    [Arguments]    ${user}    ${password}    ${status}
   
    Input Text    xpath=//*[@resource-id="com.qaxperience.yodapp:id/etEmail"]    text=${user}
    Input Text    xpath=//*[@resource-id="com.qaxperience.yodapp:id/etPassword"]    text=${password}
    Click Element    xpath=//*[@resource-id="com.qaxperience.yodapp:id/btnSubmit"]

    IF    "${status}" == "sucesso"
        Wait Until Page Contains    text=Boas vindas, logado você está.
    ELSE
        Wait Until Page Contains    text=Oops! Credenciais incorretas.
    END