*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***
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

Wait For Login Page
    Wait Until Element Is Enabled    ${LOGIN_PAGE_TOP_LOGO_IMAGE_LOCATOR}
