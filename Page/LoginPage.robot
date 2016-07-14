*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot
Resource          NavigatorPage.robot

*** Variables ***
${USER_INPUT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_LOCATOR}    //input[@name='j_password']
${LOGIN_BUTTON_LOCATOR}    //button[contains(text(),'Login')]
${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif?b=']
${LOGIN_PAGE_URL}    http://epbygomw0158:18081/cmp/login

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Run Keyword Unless    ${BROWSER_ID}    Start Browser With Login Page
    ${login_page_status}    Is Login Page Current
    Run Keyword Unless    ${login_page_status}    Load Login Page
    Input Text    ${USER_INPUT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${password}
    Submit Form

Wait Login Page Top Logo Image
    Wait Until Element Is Visible    ${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Is Login Page Current
    ${current_url}    Get Location
    ${login_page_status}    Set Variable If    "${current_url}" == "${LOGIN_PAGE_URL}"    True    False
    [Return]    ${login_page_status}

Start Browser With Login Page
    ${id}    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER_TYPE}
    Maximize Browser Window
    Set Suite Variable    ${BROWSER_ID}    ${id}
    Wait Login Page Top Logo Image

Load Login Page
    Go To    ${LOGIN_PAGE_URL}
    Wait Login Page Top Logo Image

Close Browser With Login Page
    Run Keyword If    ${BROWSER_ID}    Close Browser
    Set Suite Variable    ${BROWSER_ID}    ${False}
