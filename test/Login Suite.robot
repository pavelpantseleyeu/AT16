*** Settings ***
Test Setup        Start Login Page
Test Teardown     Shutdown Login Page
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/NavigatorService.robot

*** Variables ***

*** Test Cases ***
1. Login Test
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on Submit button
    ...    4.Verify that user has logged
    Login Service    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    ${logo_status}    Is Login Attempts Are Successful
    Check Navigator Page Status    ${logo_status}
