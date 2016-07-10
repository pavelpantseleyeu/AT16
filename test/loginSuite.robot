*** Settings ***
Suite Setup       Open Browser And Maximize Window    ${CMP_ADRESS}    ${BROWSER_TYPE}
Suite Teardown    CloseBrowser
Test Setup        Wait For Login Page
Resource          ../Service/LoginService.robot
Library           Selenium2Library
Resource          C:/Users/Dzmitry_Kamarou/PycharmProjects/AT16/Page/Page.robot
Resource          ../Page/NavigatorPage.robot

*** Variables ***

*** Test Cases ***
1. Login Test
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on to Submit button
    ...    4.Submit the dialog message
    ...    5.Verify that user has login
    Login And Wait Top Logo Image UI    ${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}
