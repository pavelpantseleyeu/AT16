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
    Input Text    ${USER_INPUT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_LOCATOR}    ${password}
    Submit Form

Wait For Login Error Message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    No error message presented on the page

Wait Login Page Top Logo Image
    Wait Until Element Is Visible    ${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}

Is Login Error Message Visible
    ${status}=    Run Keyword And Return Status    Wait For Login Error Message
    [Return]    ${status}
