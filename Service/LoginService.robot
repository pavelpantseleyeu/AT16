*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Test Cases ***

*** Keywords ***
Login And Wait Top Logo Image UI
    Login
    Wait Top Logo Image
