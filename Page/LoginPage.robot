*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot
Resource          NavigatorPage.robot

*** Variables ***
${LOGIN_ERROR_MESSAGE_LOCATOR}    //font[contains(text(), 'Incorrect login or password.')]
${USER_INPUT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_LOCATOR}    //input[@name='j_password']
${LOGIN_BUTTON_LOCATOR}    //button[contains(text(),'Login')]
${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif?b=']

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Run Keyword Unless    ${BROWSER_ID}    Start Browser With Login Page
    ${login_page_status}    Is Login Page Current
    Run Keyword Unless    ${login_page_status}    Load Login Page
    Input Text    ${USER_INPUT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${password}
    Submit Form

Is Login Error Message Visible
    ${status}=    Run Keyword And Return Status    Wait For Login Error Message
    [Return]    ${status}
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

Wait For Login Page
    Wait Until Element Is Visible    ${USER_INPUT_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    There is no username input field presented on the page
    Wait Until Element Is Visible    ${PASSWORD_INPUT_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    There is no password input field presented on the page

Wait For Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    No error message presented on the page
q