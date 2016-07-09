*** Settings ***
Suite Setup       StartBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    StopBrowser
Test Template     Login with invalid credentials should fail
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/LoginService.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Invalid Username Test
    invalidLogin    ${ADMIN_PASSWORD}

2. Invalid Password Test
    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password Test
    ${ADMIN_LOGIN}    ${EMPTY}

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Login Service UI    ${username}    ${password}
