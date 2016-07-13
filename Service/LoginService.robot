*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot
Resource          ../Utils/Browser.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Log    ${BROWSER_ID}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}

Start Login Page
    Log    ${BROWSER_ID}
    Start Browser With Login Page
