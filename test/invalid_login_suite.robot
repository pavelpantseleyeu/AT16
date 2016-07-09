*** Settings ***
Suite Setup       BrowserService.RiseBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    BrowserService.ShutdownBrowser
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/LoginService.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Invalid Username Test
    Login And Wait Top Logo Image UI    invalidLogin    ${ADMIN_PASSWORD}

2. Invalid Password Test
    Login And Wait Top Logo Image UI    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password Test
    Login And Wait Top Logo Image UI    ${ADMIN_LOGIN}    ${EMPTY}
