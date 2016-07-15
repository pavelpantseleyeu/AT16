*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Is Login Attempts Are Unsuccessful
    ${login_error_message_status}=    Is Login Error Message Visible
    Location Should Be    ${LOGIN_PAGE_URL_WITH_ERROR}
    [Return]    ${login_error_message_status}

Login Service UI
    [Arguments]    ${login}    ${password}
    Start Browser With Login Page
    Login    ${login}    ${password}

Shutdown Login Page
    Close Browser With Login Page
