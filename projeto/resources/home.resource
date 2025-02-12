*** Settings ***
Resource    base.resource

*** Keywords ***
Iniciar sessão
    Open Application    http://localhost:4723
    ...    platformName=Android
    ...    deviceName=Android Emulator
    ...    automationName=UIAutomator2
    ...    app=${EXECDIR}/app/yodapp.apk
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    
    Wait Until Page Contains    Yodapp
    Wait Until Page Contains    Mobile Training
    Wait Until Page Contains    by Papito!

Encerrar sessão
    Close Application

Entrar no App
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text="QAX"]
    Click Element     xpath=//android.widget.Button[@text="QAX"]