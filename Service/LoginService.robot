*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    Wait Top Logo Image
