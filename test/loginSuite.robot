*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${CMP_ADRESS}    ${BROWSER_TYPE}
Suite Teardown    CloseBrowser
Test Setup        Wait For Login Page
Resource          ../Service/LoginService.robot
Library           Selenium2Library

*** Variables ***

*** Test Cases ***
1. Login Test
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on to Submit button
    ...    4.Submit the dialog message
    ...    5.Verify that user has login
    Login And Wait Top Logo Image UI

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    MaximizeBrowserWindow

Wait For Login Page
    Wait Until Element Is Enabled    ${USER_INPUT_LOCATOR}

Wait For Navigator Page
    Wait Top Logo Image


