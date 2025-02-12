*** Settings ***
Resource    base.resource

*** Keywords ***
Selecionar checkbox
    [Arguments]    ${item}
    ${before}    Get Element Attribute    xpath=//android.widget.CheckBox[@resource-id="com.qaxperience.yodapp:id/checkboxButton" and contains(@text, "${item}")]    attribute=checked
    Should Be Equal    ${before}     false
    Click Element    xpath=//android.widget.CheckBox[@resource-id="com.qaxperience.yodapp:id/checkboxButton" and contains(@text, "${item}")]
    Sleep    1s
    ${after}    Get Element Attribute    xpath=//android.widget.CheckBox[@resource-id="com.qaxperience.yodapp:id/checkboxButton" and contains(@text, "${item}")]    attribute=checked
    Should Be Equal    ${after}     true