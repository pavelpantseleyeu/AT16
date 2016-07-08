*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    Login    ${ADMIN}    ${PASSWORD}
    Wait Top Logo Image
