*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}

Start Login Page
    Start Browser With Login Page

Shutdown Login Page
    Close Browser With Login Page
