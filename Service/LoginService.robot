*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Wait For Login Page
    Login    ${login}    ${password}

Is Login Attempts Are Unsuccessful
    ${login_error_message_status}=    Is Login Error Message Visible
    Location Should Be    ${LOGIN_PAGE_URL_WITH_ERROR}
    [Return]    ${login_error_message_status}

Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}
