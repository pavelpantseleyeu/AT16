*** Settings ***
Test Setup        Wait For Login Page
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/NavigatorService.robot
Resource          ../Utils/Browser.robot

*** Test Cases ***
1. Login Test
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on to Submit button
    ...    4.Submit the dialog message
    ...    5.Verify that user has login
    ${logo_status}    Login And Wait Top Logo Image UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Check Navigator Page Status    ${logo_status}
    Is Browser Open

2. Login Test (Will Deleted)
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on to Submit button
    ...    4.Submit the dialog message
    ...    5.Verify that user has login
    Login    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Login    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Close Browser
    Login    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
