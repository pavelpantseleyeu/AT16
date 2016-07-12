*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot
Resource          ../Utils/Browser.robot
Resource          NavigatorPage.robot

*** Variables ***
${LOGIN_ERROR_MESSAGE_LOCATOR}    //font[contains(text(), 'Incorrect login or password.')]
${USER_INPUT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_LOCATOR}    //input[@name='j_password']
${LOGIN_BUTTON_LOCATOR}    //button[contains(text(),'Login')]
${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif?b=']
${LOGIN_PAGE_URL}    epbygomw0158:18081/cmp/login

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Log    ${BROWSER_STATUS}
    Log    ${BROWSER_ID}
    ${browser_status}    Is Browser Open
    Log    ${browser_status}
    Run Keyword If    ${browser_status} == False    Start Login Page
    ${login_page_status}    Is Login Page Current
    Run Keyword If    ${login_page_status} == False    Go To    ${LOGIN_PAGE_URL}
    Wait Login Page Top Logo Image
    Input Text    ${USER_INPUT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${password}
    Submit Form
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Wait For Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    No error message presented on the page

Wait Login Page Top Logo Image
    Wait Until Element Is Visible    ${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Is Login Error Message Visible
    ${status}=    Run Keyword And Return Status    Wait For Login Error Message
    [Return]    ${status}

Start Login Page
    ${BROWSER_ID}    Open Browser    ${LOGIN_PAGE_URL}    ${BROWSER_TYPE}
    Log    ${BROWSER_STATUS}
    Log    ${BROWSER_ID}
    Maximize Browser Window
    Wait Login Page Top Logo Image
    Log    ${BROWSER_STATUS}
    Log    ${BROWSER_ID}

Is Login Page Current
    ${login_page_status}    Set Variable    False
    ${current_url}    Get Location
    ${login_page_status}    Set Variable If    "${current_url}" == "${LOGIN_PAGE_URL}"    True
    [Return]    ${login_page_status}
