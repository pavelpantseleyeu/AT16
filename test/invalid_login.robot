*** Settings ***
Resource          ../Service/LoginService.robot

*** Test Cases ***
1. Invalid Username
    invalidLogin    ${ADMIN_PASSWORD}

2. Invalid Password
    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password
    ${ADMIN_LOGIN}    ${EMPTY}
