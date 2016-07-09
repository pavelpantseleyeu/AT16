*** Settings ***
Suite Setup       StartBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    StopBrowser
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/LoginService.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Invalid Username Test
    Login Service UI    invalidLogin    ${ADMIN_PASSWORD}

2. Invalid Password Test
    Login Service UI    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password Test
    Login Service UI    ${ADMIN_LOGIN}    ${EMPTY}
