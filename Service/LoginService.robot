*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}

Check Login Service
    ${login_error_message_status}=    Is Login Error Message Visible
    [Return]    ${login_error_message_status}
