*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***
${USER_NAME_INPUT_TEXT_LOCATOR}    j_username
${PASSWORD_INPUT_TEXT_LOCATOR}    j_password

*** Keywords ***
Login
    [Arguments]   ${login}    ${password}
    Open Browser    ${CMP_ADDRESS}
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${login}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${password}
    Submit Form
