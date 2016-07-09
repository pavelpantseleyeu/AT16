*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
