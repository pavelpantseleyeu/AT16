*** Settings ***
Suite Setup       Rise Browser    ${PAGE_URL}    ${BROWSER_TYPE}
Suite Teardown    Shutdown Browser
Test Setup        Wait For Login Page
Resource          ../Service/LoginService.robot
Resource          ../UI/Browser.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/NavigatorService.robot

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
