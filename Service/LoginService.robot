*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}

Is Login Attempts Are Unsuccessful
    ${login_error_message_status}=    Is Login Error Message Visible
    [Return]    ${login_error_message_status}

Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}

Wait For Login Page
    Wait Login Page Top Logo Image
