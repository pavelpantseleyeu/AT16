*** Settings ***
Resource          ../Service/LoginService.robot
Library           Selenium2Library

*** Variables ***

*** Test Cases ***
1. Login Test
    OpenBrowser    ${CMP_ADRESS}    gc
    MaximizeBrowserWindow
    Wait Until Element Is Enabled    ${USER_INPUT_LOCATOR}
    Input Text    ${USER_INPUT_LOCATOR}    ${ADMIN_LOGIN}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${ADMIN_PASSWORD}
    Click Button    ${LOGIN_BUTTON_LOCATOR}
    Choose Ok On Next Confirmation
    CloseBrowser
