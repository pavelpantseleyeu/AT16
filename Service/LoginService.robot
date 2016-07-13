*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot
Resource          ../Utils/Browser.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${login}    ${password}
    Log    ${BROWSER_ID}
    Login    ${login}    ${password}
    ${logo_status}    Is Navigator Page Top Logo Image Visible
    [Return]    ${logo_status}

Wait For Login Page
    Start Login Page

Start Login Page
    Log    ${BROWSER_ID}
    Start Browser With Login Page

Is Login Page Loaded
    ${current_url}    Get Location
    ${login_page_status}    Set Variable    ${current_url} == ${LOGIN_PAGE_URL}
    [Return]    ${login_page_status}
