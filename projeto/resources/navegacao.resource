*** Settings ***
Resource    base.resource

*** Keywords ***
Navegador para menu lateral
    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Click Element     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

Acessar menu
    [Arguments]    ${menu_item}
    
    Wait Until Element Is Visible     xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${menu_item}"]     10
    Click Element    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${menu_item}"]    
    Wait Until Page Does Not Contain    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${menu_item}"]
    Sleep    1s
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/toolbarTitle" and @text="${menu_item}"]

Acessar submenu
    [Arguments]    ${menu_item}

    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="${menu_item}"]
    Click Element    xpath=//android.widget.TextView[@text="${menu_item}"]
