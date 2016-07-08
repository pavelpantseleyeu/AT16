*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    Login    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Wait Top Logo Image
