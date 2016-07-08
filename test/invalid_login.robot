*** Settings ***
Suite Setup       RiseBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    ShutdownBrowser
Resource          ../Service/LoginService.robot
Resource          ../Page/__init__.robot

*** Test Cases ***
1. Invalid Username
    invalidLogin    ${ADMIN_PASSWORD}

2. Invalid Password
    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password
    ${ADMIN_LOGIN}    ${EMPTY}
