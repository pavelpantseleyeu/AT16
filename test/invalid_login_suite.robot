*** Settings ***
Suite Setup       Start Browser    ${PAGE_URL}    ${BROWSER_TYPE}
...               AND    wer
Suite Teardown    Stop Browser
Test Template     Login with invalid credentials should fail
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/LoginService.robot
Resource          ../Service/BrowserService.robot
Resource          ../Utils/Randomiser.robot

*** Variables ***
${randomString}    ${EMPTY}

*** Test Cases ***
1. Invalid Username Test
    [Documentation]    Login with invalid Username should fail
    ...    1.Open login page
    ...    2.Type invalid user login to login input
    ...    3.Type valid user password to password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    invalidUsername    ${ADMIN_PASSWORD}

2. Invalid Password Test
    [Documentation]    Login with invalid Password should fail
    ...    1.Open login page
    ...    2.Type valid user login to login input
    ...    3.Type invalid user password to password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    ${ADMIN_LOGIN}    invalidPassword

3. Empty Password Test
    [Documentation]    Login with empty Password should fail
    ...    1.Open login page
    ...    2.Type valid user login to login input
    ...    3.Clear password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    ${ADMIN_LOGIN}    ${EMPTY}

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Login And Wait Top Logo Image UI    ${username}    ${password}
    ${test_status}=    Is login attempts are unsuccessful
    Should Be True    ${test_status}    Error! Login error message does not exists
