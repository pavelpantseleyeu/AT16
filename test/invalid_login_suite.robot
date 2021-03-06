*** Settings ***
Suite Setup       Set Random String    ${NUMBER_OF_TEST_CHARACTERS}
Suite Teardown    Shutdown Login Page
Test Setup
Test Teardown
Test Template     Login With Invalid Credentials Should Fail
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/LoginService.robot
Resource          ../Utils/Randomiser.robot
Resource          ../Utils/Checker.robot

*** Test Cases ***
1. Invalid Username Test
    [Documentation]    Login with invalid Username should fail
    ...    1.Open login page
    ...    2.Type invalid user login to login input
    ...    3.Type valid user password to password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    [Tags]
    ${randomString}    ${ADMIN_PASSWORD}

2. Invalid Password Test
    [Documentation]    Login with invalid Password should fail
    ...    1.Open login page
    ...    2.Type valid user login to login input
    ...    3.Type invalid user password to password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    ${ADMIN_LOGIN}    ${randomString}

3. Empty Password Test
    [Documentation]    Login with empty Password should fail
    ...    1.Open login page
    ...    2.Type valid user login to login input
    ...    3.Clear password input
    ...    4.Submit form
    ...    5.Check that error message has appear
    ${ADMIN_LOGIN}    ${EMPTY}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Login Service UI    ${username}    ${password}
    ${test_status}=    Is Login Attempts Are Unsuccessful
    Check Page Status    ${test_status}    'LOGIN'
