*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot
Resource          NavigatorPage.robot
Resource          Page.robot

*** Variables ***
${USER_NAME_INPUT_TEXT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_TEXT_LOCATOR}    //input[@name='j_password']
${LOGIN_ERROR_MESSAGE_LOCATOR}    //font[contains(text(), 'Incorrect login or password.')]
${USER_INPUT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_LOCATOR}    //input[@name='j_password']
${LOGIN_BUTTON_LOCATOR}    //button[contains(text(),'Login')]
${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif?b=']

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Wait For Login Page
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${password}
    [Arguments]    ${login}    ${password}
    Input Text    ${USER_INPUT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${password}
    Submit Form

Wait For Login Page
    Wait Top Logo Image    ${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}

Is Error Message Visible

Wait For Login Page
    Wait Until Element Is Visible    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}
    Wait Until Element Is Visible    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Wait For Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Wait Top Logo Image
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Is Login Error Message Visible
    ${status}=    Run Keyword And Return Status    Wait For Login Error Message
    [Return]    ${status}
