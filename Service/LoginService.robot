*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot
Resource          ../Utils/Browser.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}

Is login attempts are unsuccessful
    ${login_error_message_status}=    Is Login Error Message Visible
    [Return]    ${login_error_message_status}

Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}

Wait For Login Page
    Start Login Page
