*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot
Resource          NavigatorPage.robot

*** Variables ***
${USER_NAME_INPUT_TEXT_LOCATOR}    //input[@id='j_username']
${PASSWORD_INPUT_TEXT_LOCATOR}    //input[@name='j_password']
${LOGIN_ERROR_MESSAGE_LOCATOR}    //font[text() = 'Incorrect login or password.']

*** Keywords ***
Login
    [Arguments]    ${login}    ${password}
    Wait For Login Page
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${password}
    Submit Form

Wait Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Is Error Message Visible

Wait For Login Page
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Wait For Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}
