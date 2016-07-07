*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***
${USER_NAME_INPUT_TEXT_LOCATOR}    j_username
${PASSWORD_INPUT_TEXT_LOCATOR}    j_password

*** Keywords ***
Login
    Open Browser    ${CMP_ADDRESS}
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${ADMIN_LOGIN}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${ADMIN_PASSWORD}
    Submit Form

InvalidUserNameLogin
    Open Browser    ${CMP_ADDRESS}
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${EMPTY}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${ADMIN_PASSWORD}
    Submit Form

InvalidPasswordLogin
    Open Browser    ${CMP_ADDRESS}
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${ADMIN_LOGIN}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${/}
    Submit Form

EmptyPasswordLogin
    Open Browser    ${CMP_ADDRESS}
    Input Text    ${USER_NAME_INPUT_TEXT_LOCATOR}    ${ADMIN_LOGIN}
    Input Text    ${PASSWORD_INPUT_TEXT_LOCATOR}    ${EMPTY}
    Submit Form
